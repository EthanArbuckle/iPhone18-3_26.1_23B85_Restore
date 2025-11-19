@interface SearchCallHistoryIntentHandler
+ (unint64_t)maximumRecordCountForCallRecordTypeOptions:(unint64_t)a3;
- (SearchCallHistoryIntentHandler)init;
- (SearchCallHistoryIntentHandler)initWithDataSource:(id)a3;
- (id)callRecordsForRecentCallsWithRecordTypeOptions:(unint64_t)a3 startDate:(id)a4 endDate:(id)a5 recipient:(id)a6 capabilities:(unint64_t)a7 preferredProvider:(int64_t)a8 maximumRecordCount:(unint64_t)a9 unseen:(id)a10;
- (id)callRecordsForVoicemails:(id)a3;
- (void)handleSearchCallHistory:(id)a3 completion:(id)a4;
- (void)handleSearchVoicemailForRecipient:(id)a3 fromStartDate:(id)a4 toEndDate:(id)a5 unread:(id)a6 maximumRecordCount:(unint64_t)a7 completion:(id)a8;
- (void)resolveRecipientForSearchCallHistory:(id)a3 withCompletion:(id)a4;
@end

@implementation SearchCallHistoryIntentHandler

- (SearchCallHistoryIntentHandler)init
{
  v3 = objc_alloc_init(SearchCallHistoryIntentHandlerDataSource);
  v4 = [(SearchCallHistoryIntentHandler *)self initWithDataSource:v3];

  return v4;
}

- (SearchCallHistoryIntentHandler)initWithDataSource:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SearchCallHistoryIntentHandler;
  v6 = [(SearchCallHistoryIntentHandler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
    v8 = objc_alloc_init(NSCache);
    identifierToContactCache = v7->_identifierToContactCache;
    v7->_identifierToContactCache = v8;
  }

  return v7;
}

+ (unint64_t)maximumRecordCountForCallRecordTypeOptions:(unint64_t)a3
{
  if ((a3 & 8) != 0)
  {
    return 1;
  }

  else
  {
    return 25;
  }
}

- (void)handleSearchCallHistory:(id)a3 completion:(id)a4
{
  v6 = a3;
  v33 = a4;
  v7 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got a SearchCallHistory intent: %@", buf, 0xCu);
  }

  v8 = [v6 dateCreated];
  v9 = [v8 startDateComponents];
  v36 = [v8 endDateComponents];
  v34 = [v6 recipient];
  v10 = [v6 callCapabilities];
  v11 = [v6 callTypes];
  v35 = [v6 unseen];
  v12 = [v6 preferredCallProvider];
  v13 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Start Date  : %@", buf, 0xCu);
  }

  v14 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v36;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "End Date    : %@", buf, 0xCu);
  }

  v15 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v34;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Recipient   : %@", buf, 0xCu);
  }

  v16 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v38 = v10;
    v39 = 1024;
    v40 = v10 & 1;
    v41 = 1024;
    v42 = (v10 >> 1) & 1;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Capabilities: %lx (audio: %d | video: %d)", buf, 0x18u);
  }

  v17 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = INPreferredCallProviderGetName();
    *buf = 138412290;
    v38 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "PreferredCallProvider: %@", buf, 0xCu);
  }

  v19 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v38 = v11;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Types       : %lx", buf, 0xCu);
  }

  v20 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v35;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Unseen     : %@", buf, 0xCu);
  }

  v21 = [objc_opt_class() maximumRecordCountForCallRecordTypeOptions:v11];
  v22 = v9;
  v23 = [v9 date];
  v24 = [v36 date];
  if ((v11 & 0x10) != 0)
  {
    v31 = self;
    v26 = v34;
    v30 = v35;
    v32 = v21;
    v29 = v33;
    [(SearchCallHistoryIntentHandler *)v31 handleSearchVoicemailForRecipient:v34 fromStartDate:v23 toEndDate:v24 unread:v35 maximumRecordCount:v32 completion:v33];
  }

  else
  {
    v25 = self;
    v26 = v34;
    v27 = [(SearchCallHistoryIntentHandler *)v25 callRecordsForRecentCallsWithRecordTypeOptions:v11 startDate:v23 endDate:v24 recipient:v34 capabilities:v10 preferredProvider:v12 maximumRecordCount:v21 unseen:v35];

    v24 = [[INSearchCallHistoryIntentResponse alloc] initWithCode:7 userActivity:0];
    [v24 setCallRecords:v27];
    v28 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v24;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Calling completion block with response: %@", buf, 0xCu);
    }

    v29 = v33;
    (*(v33 + 2))(v33, v24);
    v23 = v27;
    v30 = v35;
  }
}

- (void)resolveRecipientForSearchCallHistory:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = [a3 recipient];
  v7 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "resolveRecipientForSearchCallHistory: %@", &v21, 0xCu);
  }

  if (!v6)
  {
    v13 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No recipient specified, returning notRequired", &v21, 2u);
    }

    v12 = +[INPersonResolutionResult notRequired];
    goto LABEL_11;
  }

  v8 = [v6 personHandle];
  v9 = [v8 value];
  v10 = [v9 length];

  if (v10)
  {
    v11 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Handle is present. Simply using the recipient to resolve with: %@", &v21, 0xCu);
    }

    v12 = [INPersonResolutionResult successWithResolvedPerson:v6];
LABEL_11:
    v14 = v12;
    goto LABEL_20;
  }

  v15 = [v6 siriMatches];
  v16 = [v15 count];
  v17 = IntentHandlerDefaultLog();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v18)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Recipient contains siriMatches, preserving those and returning success", &v21, 2u);
    }

    v19 = [INPersonResolutionResult successWithResolvedPerson:v6];
  }

  else
  {
    if (v18)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No contacts match the specified recipient, returning unsupported (a.k.a. notFound)", &v21, 2u);
    }

    v19 = +[INPersonResolutionResult unsupported];
  }

  v14 = v19;

LABEL_20:
  v20 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Resolving with: %@", &v21, 0xCu);
  }

  v5[2](v5, v14);
}

- (void)handleSearchVoicemailForRecipient:(id)a3 fromStartDate:(id)a4 toEndDate:(id)a5 unread:(id)a6 maximumRecordCount:(unint64_t)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Type indicates we should be searching for voicemail. Matching voicemails to this intent", buf, 2u);
  }

  v20 = [(SearchCallHistoryIntentHandler *)self dataSource];
  v21 = [v20 voicemailDataSource];

  if ([v21 isOnlineAndSubscribed])
  {
    [(SearchCallHistoryIntentHandler *)self dataSource];
    v22 = self;
    v23 = v34 = self;
    [v23 contactsDataSource];
    v35 = a7;
    v24 = v21;
    v25 = v18;
    v26 = v17;
    v27 = v16;
    v29 = v28 = v15;
    v30 = [(SearchCallHistoryIntentHandler *)v22 identifierToContactCache];
    v31 = [v14 tu_handlesMatchingPersonWithContactsDataSource:v29 identifierToContactCache:v30];

    v15 = v28;
    v16 = v27;
    v17 = v26;
    v18 = v25;
    v21 = v24;

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100008D3C;
    v39[3] = &unk_10004CCD0;
    v40 = v14;
    v41 = v31;
    v42 = v15;
    v43 = v16;
    v44 = v17;
    v32 = v31;
    v33 = objc_retainBlock(v39);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10000915C;
    v36[3] = &unk_10004CCF8;
    v38 = v35;
    v36[4] = v34;
    v37 = v18;
    [v24 fetchVoicemailsMatching:v33 completion:v36];
  }

  else
  {
    v32 = [[INSearchCallHistoryIntentResponse alloc] initWithCode:5 userActivity:0];
    (*(v18 + 2))(v18, v32);
  }
}

- (id)callRecordsForVoicemails:(id)a3
{
  v3 = a3;
  v35 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v33 = objc_alloc_init(NSMutableDictionary);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v3;
  v36 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v36)
  {
    v34 = *v39;
    do
    {
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v39 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v38 + 1) + 8 * i);
        v6 = [v5 senderDestinationID];
        v7 = [v6 length];

        if (!v7)
        {
          v13 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Could not determine voicemail.senderDestinationID", buf, 2u);
          }

          goto LABEL_14;
        }

        v8 = [TUHandle alloc];
        v9 = [v5 senderDestinationID];
        v10 = [v8 initWithType:2 value:v9];

        v11 = [v33 objectForKey:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          if (v11)
          {

LABEL_14:
            v12 = 0;
LABEL_23:
            v22 = 0;
            goto LABEL_24;
          }

          v14 = [(SearchCallHistoryIntentHandler *)self dataSource];
          v15 = [v14 contactsDataSource];
          v16 = [(SearchCallHistoryIntentHandler *)self dataSource];
          v17 = [v16 coreTelephonyDataSource];
          v18 = [v17 allRelevantISOCountryCodes];
          v12 = [INPerson tu_personMatchingHandle:v10 contactsDataSource:v15 isoCountryCodes:v18];

          if (v12)
          {
            v19 = v12;
          }

          else
          {
            v19 = +[NSNull null];
          }

          v20 = v19;
          [v33 setObject:v19 forKey:v10];
        }

        if (!v12)
        {
          goto LABEL_23;
        }

        v21 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] person in callRecord is nil", buf, 2u);
        }

        v42 = v12;
        v22 = [NSArray arrayWithObjects:&v42 count:1];
LABEL_24:
        v23 = [INCallRecord alloc];
        v24 = [v5 vmIdentifier];
        v25 = [v5 date];
        [v5 duration];
        v26 = [NSNumber numberWithDouble:?];
        v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isUnread]);
        v28 = [v23 initWithIdentifier:v24 dateCreated:v25 callRecordType:5 callCapability:1 callDuration:v26 unseen:v27 participants:v22 numberOfCalls:0 isCallerIdBlocked:0];

        [v35 addObject:v28];
      }

      v36 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v36);
  }

  v29 = [v35 copy];

  return v29;
}

- (id)callRecordsForRecentCallsWithRecordTypeOptions:(unint64_t)a3 startDate:(id)a4 endDate:(id)a5 recipient:(id)a6 capabilities:(unint64_t)a7 preferredProvider:(int64_t)a8 maximumRecordCount:(unint64_t)a9 unseen:(id)a10
{
  v84 = a8;
  *(&v87 + 1) = a4;
  *&v87 = a5;
  v13 = a6;
  v86 = a10;
  v14 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Performing call history lookup", buf, 2u);
  }

  v15 = &AnalyticsSendEventLazy_ptr;
  v16 = objc_alloc_init(NSMutableArray);
  if (v87 != 0)
  {
    v17 = [CallHistoryDataSourcePredicate predicateForCallsAfterDate:*(&v87 + 1) beforeDate:v87];
    [v16 addObject:v17];
  }

  if (v13)
  {
    v18 = [(SearchCallHistoryIntentHandler *)self dataSource];
    v19 = [v18 contactsDataSource];
    v20 = [(SearchCallHistoryIntentHandler *)self identifierToContactCache];
    v21 = [v13 tu_handlesMatchingPersonWithContactsDataSource:v19 identifierToContactCache:v20];

    v22 = [CallHistoryDataSourcePredicate predicateForCallsWithNumberOfRemoteParticipants:1];
    [v16 addObject:v22];
    v23 = [(SearchCallHistoryIntentHandler *)self dataSource];
    [v23 coreTelephonyDataSource];
    v25 = v24 = a3;
    v26 = [v25 allRelevantISOCountryCodes];
    v27 = [CallHistoryDataSourcePredicate predicateForCallsWithAnyOfTheseRemoteParticipantHandles:v21 isoCountryCodes:v26];

    a3 = v24;
    [v16 addObject:v27];
  }

  v85 = v13;
  v28 = v86;
  if (a3)
  {
    v29 = objc_alloc_init(NSMutableArray);
    if (a3)
    {
      v30 = [CallHistoryDataSourcePredicate predicateForCallsThatWereOriginated:1];
      [v29 addObject:v30];
    }

    if ((a3 & 2) != 0)
    {
      v31 = [CallHistoryDataSourcePredicate predicateForCallsThatWereOriginated:0];
      v32 = [CallHistoryDataSourcePredicate predicateForCallsThatWereAnswered:0];
      v33 = a3;
      v93[0] = v31;
      v93[1] = v32;
      v34 = [NSArray arrayWithObjects:v93 count:2];
      v35 = [NSCompoundPredicate andPredicateWithSubpredicates:v34];

      [v29 addObject:v35];
      a3 = v33;

      v28 = v86;
      v15 = &AnalyticsSendEventLazy_ptr;
    }

    if ((a3 & 4) != 0)
    {
      v36 = [CallHistoryDataSourcePredicate predicateForCallsThatWereOriginated:0];
      [CallHistoryDataSourcePredicate predicateForCallsThatWereAnswered:1];
      v38 = v37 = v28;
      v39 = a3;
      v92[0] = v36;
      v92[1] = v38;
      v40 = [NSArray arrayWithObjects:v92 count:2];
      v41 = [NSCompoundPredicate andPredicateWithSubpredicates:v40];

      [v29 addObject:v41];
      a3 = v39;

      v28 = v37;
      v15 = &AnalyticsSendEventLazy_ptr;
    }

    if (a3 >= 8)
    {
      v42 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_10002F50C(a3, v42, v43, v44, v45, v46, v47, v48);
      }
    }

    if ([v29 count] == 1)
    {
      v49 = [v29 firstObject];
    }

    else
    {
      if ([v29 count] < 2)
      {
LABEL_23:

        goto LABEL_24;
      }

      v49 = [NSCompoundPredicate orPredicateWithSubpredicates:v29];
    }

    v50 = v49;
    [v16 addObject:v49];

    goto LABEL_23;
  }

LABEL_24:
  if (!a7)
  {
    goto LABEL_39;
  }

  v51 = objc_alloc_init(v15[337]);
  if (a7)
  {
    v52 = +[CallHistoryDataSourcePredicate predicateForAudioCalls];
    [v51 addObject:v52];
  }

  if ((a7 & 2) != 0)
  {
    v53 = +[CallHistoryDataSourcePredicate predicateForVideoCalls];
    [v51 addObject:v53];
  }

  if (a7 >= 4)
  {
    v54 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      sub_10002F578(a7, v54, v55, v56, v57, v58, v59, v60);
    }
  }

  if ([v51 count] == 1)
  {
    v61 = [v51 firstObject];
LABEL_37:
    v62 = v61;
    [v16 addObject:v61];

    goto LABEL_38;
  }

  if ([v51 count] >= 2)
  {
    v61 = [NSCompoundPredicate orPredicateWithSubpredicates:v51];
    goto LABEL_37;
  }

LABEL_38:

LABEL_39:
  if (v84 == 2)
  {
    v63 = +[CallHistoryDataSourcePredicate predicateForFaceTimeCalls];
  }

  else
  {
    if (v84 != 1)
    {
      goto LABEL_44;
    }

    v63 = +[CallHistoryDataSourcePredicate predicateForTelephonyCalls];
  }

  v64 = v63;
  [v16 addObject:{v63, v84}];

LABEL_44:
  if (v28)
  {
    v65 = +[CallHistoryDataSourcePredicate predicateForCallsThatAreRead:](CallHistoryDataSourcePredicate, "predicateForCallsThatAreRead:", [v28 BOOLValue] ^ 1);
    [v16 addObject:v65];
  }

  v66 = [(SearchCallHistoryIntentHandler *)self dataSource];
  v67 = [v66 restrictedCallTypes];

  if (v67)
  {
    v68 = [CallHistoryDataSourcePredicate predicateFilteringOutCallTypes:v67];
    [v16 addObject:v68];
  }

  if ([v16 count] == 1)
  {
    v69 = [v16 firstObject];
LABEL_52:
    v70 = v69;
    goto LABEL_54;
  }

  if ([v16 count] >= 2)
  {
    v69 = [NSCompoundPredicate andPredicateWithSubpredicates:v16];
    goto LABEL_52;
  }

  v70 = 0;
LABEL_54:
  v71 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v91 = v70;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Using predicate: %@", buf, 0xCu);
  }

  v72 = [(SearchCallHistoryIntentHandler *)self dataSource];
  v73 = [v72 callHistoryDataSource];
  v74 = [v73 coalescedCallsWithPredicate:v70 limit:a9 offset:0 batchSize:a9];

  v75 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v91 = v74;
    _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Call history search results: %@", buf, 0xCu);
  }

  v76 = +[CallRecordConverter sharedInstance];
  v77 = [(SearchCallHistoryIntentHandler *)self dataSource];
  v78 = [v77 contactsDataSource];
  v79 = [(SearchCallHistoryIntentHandler *)self dataSource];
  v80 = [v79 providerManager];
  v81 = [v76 callRecordsForRecentCalls:v74 withContactsDataSource:v78 withCallProviderManager:v80];

  v82 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v91 = v81;
    _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "callRecords: %@", buf, 0xCu);
  }

  return v81;
}

@end
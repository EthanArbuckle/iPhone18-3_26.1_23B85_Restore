@interface SearchCallHistoryIntentHandler
+ (unint64_t)maximumRecordCountForCallRecordTypeOptions:(unint64_t)options;
- (SearchCallHistoryIntentHandler)init;
- (SearchCallHistoryIntentHandler)initWithDataSource:(id)source;
- (id)callRecordsForRecentCallsWithRecordTypeOptions:(unint64_t)options startDate:(id)date endDate:(id)endDate recipient:(id)recipient capabilities:(unint64_t)capabilities preferredProvider:(int64_t)provider maximumRecordCount:(unint64_t)count unseen:(id)self0;
- (id)callRecordsForVoicemails:(id)voicemails;
- (void)handleSearchCallHistory:(id)history completion:(id)completion;
- (void)handleSearchVoicemailForRecipient:(id)recipient fromStartDate:(id)date toEndDate:(id)endDate unread:(id)unread maximumRecordCount:(unint64_t)count completion:(id)completion;
- (void)resolveRecipientForSearchCallHistory:(id)history withCompletion:(id)completion;
@end

@implementation SearchCallHistoryIntentHandler

- (SearchCallHistoryIntentHandler)init
{
  v3 = objc_alloc_init(SearchCallHistoryIntentHandlerDataSource);
  v4 = [(SearchCallHistoryIntentHandler *)self initWithDataSource:v3];

  return v4;
}

- (SearchCallHistoryIntentHandler)initWithDataSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = SearchCallHistoryIntentHandler;
  v6 = [(SearchCallHistoryIntentHandler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    v8 = objc_alloc_init(NSCache);
    identifierToContactCache = v7->_identifierToContactCache;
    v7->_identifierToContactCache = v8;
  }

  return v7;
}

+ (unint64_t)maximumRecordCountForCallRecordTypeOptions:(unint64_t)options
{
  if ((options & 8) != 0)
  {
    return 1;
  }

  else
  {
    return 25;
  }
}

- (void)handleSearchCallHistory:(id)history completion:(id)completion
{
  historyCopy = history;
  completionCopy = completion;
  v7 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = historyCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got a SearchCallHistory intent: %@", buf, 0xCu);
  }

  dateCreated = [historyCopy dateCreated];
  startDateComponents = [dateCreated startDateComponents];
  endDateComponents = [dateCreated endDateComponents];
  recipient = [historyCopy recipient];
  callCapabilities = [historyCopy callCapabilities];
  callTypes = [historyCopy callTypes];
  unseen = [historyCopy unseen];
  preferredCallProvider = [historyCopy preferredCallProvider];
  v13 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = startDateComponents;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Start Date  : %@", buf, 0xCu);
  }

  v14 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = endDateComponents;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "End Date    : %@", buf, 0xCu);
  }

  v15 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = recipient;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Recipient   : %@", buf, 0xCu);
  }

  v16 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v38 = callCapabilities;
    v39 = 1024;
    v40 = callCapabilities & 1;
    v41 = 1024;
    v42 = (callCapabilities >> 1) & 1;
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
    v38 = callTypes;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Types       : %lx", buf, 0xCu);
  }

  v20 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = unseen;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Unseen     : %@", buf, 0xCu);
  }

  v21 = [objc_opt_class() maximumRecordCountForCallRecordTypeOptions:callTypes];
  v22 = startDateComponents;
  date = [startDateComponents date];
  date2 = [endDateComponents date];
  if ((callTypes & 0x10) != 0)
  {
    selfCopy = self;
    v26 = recipient;
    v30 = unseen;
    v32 = v21;
    v29 = completionCopy;
    [(SearchCallHistoryIntentHandler *)selfCopy handleSearchVoicemailForRecipient:recipient fromStartDate:date toEndDate:date2 unread:unseen maximumRecordCount:v32 completion:completionCopy];
  }

  else
  {
    selfCopy2 = self;
    v26 = recipient;
    v27 = [(SearchCallHistoryIntentHandler *)selfCopy2 callRecordsForRecentCallsWithRecordTypeOptions:callTypes startDate:date endDate:date2 recipient:recipient capabilities:callCapabilities preferredProvider:preferredCallProvider maximumRecordCount:v21 unseen:unseen];

    date2 = [[INSearchCallHistoryIntentResponse alloc] initWithCode:7 userActivity:0];
    [date2 setCallRecords:v27];
    v28 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = date2;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Calling completion block with response: %@", buf, 0xCu);
    }

    v29 = completionCopy;
    (*(completionCopy + 2))(completionCopy, date2);
    date = v27;
    v30 = unseen;
  }
}

- (void)resolveRecipientForSearchCallHistory:(id)history withCompletion:(id)completion
{
  completionCopy = completion;
  recipient = [history recipient];
  v7 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = recipient;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "resolveRecipientForSearchCallHistory: %@", &v21, 0xCu);
  }

  if (!recipient)
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

  personHandle = [recipient personHandle];
  value = [personHandle value];
  v10 = [value length];

  if (v10)
  {
    v11 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = recipient;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Handle is present. Simply using the recipient to resolve with: %@", &v21, 0xCu);
    }

    v12 = [INPersonResolutionResult successWithResolvedPerson:recipient];
LABEL_11:
    v14 = v12;
    goto LABEL_20;
  }

  siriMatches = [recipient siriMatches];
  v16 = [siriMatches count];
  v17 = IntentHandlerDefaultLog();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v18)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Recipient contains siriMatches, preserving those and returning success", &v21, 2u);
    }

    v19 = [INPersonResolutionResult successWithResolvedPerson:recipient];
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

  completionCopy[2](completionCopy, v14);
}

- (void)handleSearchVoicemailForRecipient:(id)recipient fromStartDate:(id)date toEndDate:(id)endDate unread:(id)unread maximumRecordCount:(unint64_t)count completion:(id)completion
{
  recipientCopy = recipient;
  dateCopy = date;
  endDateCopy = endDate;
  unreadCopy = unread;
  completionCopy = completion;
  v19 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Type indicates we should be searching for voicemail. Matching voicemails to this intent", buf, 2u);
  }

  dataSource = [(SearchCallHistoryIntentHandler *)self dataSource];
  voicemailDataSource = [dataSource voicemailDataSource];

  if ([voicemailDataSource isOnlineAndSubscribed])
  {
    [(SearchCallHistoryIntentHandler *)self dataSource];
    selfCopy = self;
    v23 = v34 = self;
    [v23 contactsDataSource];
    countCopy = count;
    v24 = voicemailDataSource;
    v25 = completionCopy;
    v26 = unreadCopy;
    v27 = endDateCopy;
    v29 = v28 = dateCopy;
    identifierToContactCache = [(SearchCallHistoryIntentHandler *)selfCopy identifierToContactCache];
    v31 = [recipientCopy tu_handlesMatchingPersonWithContactsDataSource:v29 identifierToContactCache:identifierToContactCache];

    dateCopy = v28;
    endDateCopy = v27;
    unreadCopy = v26;
    completionCopy = v25;
    voicemailDataSource = v24;

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100008D3C;
    v39[3] = &unk_10004CCD0;
    v40 = recipientCopy;
    v41 = v31;
    v42 = dateCopy;
    v43 = endDateCopy;
    v44 = unreadCopy;
    v32 = v31;
    v33 = objc_retainBlock(v39);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10000915C;
    v36[3] = &unk_10004CCF8;
    v38 = countCopy;
    v36[4] = v34;
    v37 = completionCopy;
    [v24 fetchVoicemailsMatching:v33 completion:v36];
  }

  else
  {
    v32 = [[INSearchCallHistoryIntentResponse alloc] initWithCode:5 userActivity:0];
    (*(completionCopy + 2))(completionCopy, v32);
  }
}

- (id)callRecordsForVoicemails:(id)voicemails
{
  voicemailsCopy = voicemails;
  v35 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [voicemailsCopy count]);
  v33 = objc_alloc_init(NSMutableDictionary);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = voicemailsCopy;
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
        senderDestinationID = [v5 senderDestinationID];
        v7 = [senderDestinationID length];

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
        senderDestinationID2 = [v5 senderDestinationID];
        v10 = [v8 initWithType:2 value:senderDestinationID2];

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

          dataSource = [(SearchCallHistoryIntentHandler *)self dataSource];
          contactsDataSource = [dataSource contactsDataSource];
          dataSource2 = [(SearchCallHistoryIntentHandler *)self dataSource];
          coreTelephonyDataSource = [dataSource2 coreTelephonyDataSource];
          allRelevantISOCountryCodes = [coreTelephonyDataSource allRelevantISOCountryCodes];
          v12 = [INPerson tu_personMatchingHandle:v10 contactsDataSource:contactsDataSource isoCountryCodes:allRelevantISOCountryCodes];

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
        vmIdentifier = [v5 vmIdentifier];
        date = [v5 date];
        [v5 duration];
        v26 = [NSNumber numberWithDouble:?];
        v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isUnread]);
        v28 = [v23 initWithIdentifier:vmIdentifier dateCreated:date callRecordType:5 callCapability:1 callDuration:v26 unseen:v27 participants:v22 numberOfCalls:0 isCallerIdBlocked:0];

        [v35 addObject:v28];
      }

      v36 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v36);
  }

  v29 = [v35 copy];

  return v29;
}

- (id)callRecordsForRecentCallsWithRecordTypeOptions:(unint64_t)options startDate:(id)date endDate:(id)endDate recipient:(id)recipient capabilities:(unint64_t)capabilities preferredProvider:(int64_t)provider maximumRecordCount:(unint64_t)count unseen:(id)self0
{
  providerCopy = provider;
  *(&v87 + 1) = date;
  *&v87 = endDate;
  recipientCopy = recipient;
  unseenCopy = unseen;
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

  if (recipientCopy)
  {
    dataSource = [(SearchCallHistoryIntentHandler *)self dataSource];
    contactsDataSource = [dataSource contactsDataSource];
    identifierToContactCache = [(SearchCallHistoryIntentHandler *)self identifierToContactCache];
    v21 = [recipientCopy tu_handlesMatchingPersonWithContactsDataSource:contactsDataSource identifierToContactCache:identifierToContactCache];

    v22 = [CallHistoryDataSourcePredicate predicateForCallsWithNumberOfRemoteParticipants:1];
    [v16 addObject:v22];
    dataSource2 = [(SearchCallHistoryIntentHandler *)self dataSource];
    [dataSource2 coreTelephonyDataSource];
    v25 = v24 = options;
    allRelevantISOCountryCodes = [v25 allRelevantISOCountryCodes];
    v27 = [CallHistoryDataSourcePredicate predicateForCallsWithAnyOfTheseRemoteParticipantHandles:v21 isoCountryCodes:allRelevantISOCountryCodes];

    options = v24;
    [v16 addObject:v27];
  }

  v85 = recipientCopy;
  v28 = unseenCopy;
  if (options)
  {
    v29 = objc_alloc_init(NSMutableArray);
    if (options)
    {
      v30 = [CallHistoryDataSourcePredicate predicateForCallsThatWereOriginated:1];
      [v29 addObject:v30];
    }

    if ((options & 2) != 0)
    {
      v31 = [CallHistoryDataSourcePredicate predicateForCallsThatWereOriginated:0];
      v32 = [CallHistoryDataSourcePredicate predicateForCallsThatWereAnswered:0];
      optionsCopy = options;
      v93[0] = v31;
      v93[1] = v32;
      v34 = [NSArray arrayWithObjects:v93 count:2];
      v35 = [NSCompoundPredicate andPredicateWithSubpredicates:v34];

      [v29 addObject:v35];
      options = optionsCopy;

      v28 = unseenCopy;
      v15 = &AnalyticsSendEventLazy_ptr;
    }

    if ((options & 4) != 0)
    {
      v36 = [CallHistoryDataSourcePredicate predicateForCallsThatWereOriginated:0];
      [CallHistoryDataSourcePredicate predicateForCallsThatWereAnswered:1];
      v38 = v37 = v28;
      optionsCopy2 = options;
      v92[0] = v36;
      v92[1] = v38;
      v40 = [NSArray arrayWithObjects:v92 count:2];
      v41 = [NSCompoundPredicate andPredicateWithSubpredicates:v40];

      [v29 addObject:v41];
      options = optionsCopy2;

      v28 = v37;
      v15 = &AnalyticsSendEventLazy_ptr;
    }

    if (options >= 8)
    {
      v42 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_10002F50C(options, v42, v43, v44, v45, v46, v47, v48);
      }
    }

    if ([v29 count] == 1)
    {
      firstObject = [v29 firstObject];
    }

    else
    {
      if ([v29 count] < 2)
      {
LABEL_23:

        goto LABEL_24;
      }

      firstObject = [NSCompoundPredicate orPredicateWithSubpredicates:v29];
    }

    v50 = firstObject;
    [v16 addObject:firstObject];

    goto LABEL_23;
  }

LABEL_24:
  if (!capabilities)
  {
    goto LABEL_39;
  }

  v51 = objc_alloc_init(v15[337]);
  if (capabilities)
  {
    v52 = +[CallHistoryDataSourcePredicate predicateForAudioCalls];
    [v51 addObject:v52];
  }

  if ((capabilities & 2) != 0)
  {
    v53 = +[CallHistoryDataSourcePredicate predicateForVideoCalls];
    [v51 addObject:v53];
  }

  if (capabilities >= 4)
  {
    v54 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      sub_10002F578(capabilities, v54, v55, v56, v57, v58, v59, v60);
    }
  }

  if ([v51 count] == 1)
  {
    firstObject2 = [v51 firstObject];
LABEL_37:
    v62 = firstObject2;
    [v16 addObject:firstObject2];

    goto LABEL_38;
  }

  if ([v51 count] >= 2)
  {
    firstObject2 = [NSCompoundPredicate orPredicateWithSubpredicates:v51];
    goto LABEL_37;
  }

LABEL_38:

LABEL_39:
  if (providerCopy == 2)
  {
    v63 = +[CallHistoryDataSourcePredicate predicateForFaceTimeCalls];
  }

  else
  {
    if (providerCopy != 1)
    {
      goto LABEL_44;
    }

    v63 = +[CallHistoryDataSourcePredicate predicateForTelephonyCalls];
  }

  v64 = v63;
  [v16 addObject:{v63, providerCopy}];

LABEL_44:
  if (v28)
  {
    v65 = +[CallHistoryDataSourcePredicate predicateForCallsThatAreRead:](CallHistoryDataSourcePredicate, "predicateForCallsThatAreRead:", [v28 BOOLValue] ^ 1);
    [v16 addObject:v65];
  }

  dataSource3 = [(SearchCallHistoryIntentHandler *)self dataSource];
  restrictedCallTypes = [dataSource3 restrictedCallTypes];

  if (restrictedCallTypes)
  {
    v68 = [CallHistoryDataSourcePredicate predicateFilteringOutCallTypes:restrictedCallTypes];
    [v16 addObject:v68];
  }

  if ([v16 count] == 1)
  {
    firstObject3 = [v16 firstObject];
LABEL_52:
    v70 = firstObject3;
    goto LABEL_54;
  }

  if ([v16 count] >= 2)
  {
    firstObject3 = [NSCompoundPredicate andPredicateWithSubpredicates:v16];
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

  dataSource4 = [(SearchCallHistoryIntentHandler *)self dataSource];
  callHistoryDataSource = [dataSource4 callHistoryDataSource];
  v74 = [callHistoryDataSource coalescedCallsWithPredicate:v70 limit:count offset:0 batchSize:count];

  v75 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v91 = v74;
    _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Call history search results: %@", buf, 0xCu);
  }

  v76 = +[CallRecordConverter sharedInstance];
  dataSource5 = [(SearchCallHistoryIntentHandler *)self dataSource];
  contactsDataSource2 = [dataSource5 contactsDataSource];
  dataSource6 = [(SearchCallHistoryIntentHandler *)self dataSource];
  providerManager = [dataSource6 providerManager];
  v81 = [v76 callRecordsForRecentCalls:v74 withContactsDataSource:contactsDataSource2 withCallProviderManager:providerManager];

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
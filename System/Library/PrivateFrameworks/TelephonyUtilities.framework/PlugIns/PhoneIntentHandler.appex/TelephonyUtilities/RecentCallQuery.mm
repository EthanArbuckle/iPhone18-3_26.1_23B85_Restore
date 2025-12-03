@interface RecentCallQuery
- (id)callCapabilityPredicate;
- (id)callRecordTypePredicates;
- (id)participantsPredicatesWithContactsDataSource:(id)source contactIdentifierCache:(id)cache coreTelephonyDataSource:(id)dataSource;
- (id)predicateForRecentCallWithContactsDataSource:(id)source contactIdentifierCache:(id)cache coreTelephonyDataSource:(id)dataSource;
- (id)preferredCallProviderPredicate;
@end

@implementation RecentCallQuery

- (id)predicateForRecentCallWithContactsDataSource:(id)source contactIdentifierCache:(id)cache coreTelephonyDataSource:(id)dataSource
{
  sourceCopy = source;
  cacheCopy = cache;
  dataSourceCopy = dataSource;
  v11 = objc_alloc_init(NSMutableArray);
  callRecordTypePredicates = [(RecentCallQuery *)self callRecordTypePredicates];
  [v11 addObjectsFromArray:callRecordTypePredicates];

  preferredCallProviderPredicate = [(RecentCallQuery *)self preferredCallProviderPredicate];
  if (preferredCallProviderPredicate)
  {
    [v11 addObject:preferredCallProviderPredicate];
  }

  callCapabilityPredicate = [(RecentCallQuery *)self callCapabilityPredicate];
  if (callCapabilityPredicate)
  {
    [v11 addObject:callCapabilityPredicate];
  }

  v15 = [(RecentCallQuery *)self participantsPredicatesWithContactsDataSource:sourceCopy contactIdentifierCache:cacheCopy coreTelephonyDataSource:dataSourceCopy];
  [v11 addObjectsFromArray:v15];

  if ([v11 count] == 1)
  {
    firstObject = [v11 firstObject];
LABEL_9:
    v17 = firstObject;
    goto LABEL_11;
  }

  if ([v11 count] >= 2)
  {
    firstObject = [NSCompoundPredicate andPredicateWithSubpredicates:v11];
    goto LABEL_9;
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (id)callRecordTypePredicates
{
  v3 = objc_alloc_init(NSMutableArray);
  if (([(RecentCallQuery *)self callTypes]& 1) != 0)
  {
    v4 = [CallHistoryDataSourcePredicate predicateForCallsThatWereOriginated:1];
    [v3 addObject:v4];
  }

  if (([(RecentCallQuery *)self callTypes]& 2) != 0)
  {
    v5 = [CallHistoryDataSourcePredicate predicateForMissedCallsSinceDate:0];
    [v3 addObject:v5];
  }

  if (([(RecentCallQuery *)self callTypes]& 4) != 0)
  {
    v6 = [CallHistoryDataSourcePredicate predicateForCallsThatWereOriginated:0];
    [v3 addObject:v6];
  }

  if (![(RecentCallQuery *)self callTypes]&& [(RecentCallQuery *)self destinationType]== 4)
  {
    v7 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Inferring outgoing callStatus requirement from the presence of redial destination type and unspecified recordTypeForRedialing.", v11, 2u);
    }

    v8 = [CallHistoryDataSourcePredicate predicateForCallsThatWereOriginated:1];
    [v3 addObject:v8];
  }

  if (([(RecentCallQuery *)self callTypes]& 0xF8) != 0)
  {
    v9 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002FEA4(v9);
    }
  }

  return v3;
}

- (id)preferredCallProviderPredicate
{
  preferredCallProvider = [(RecentCallQuery *)self preferredCallProvider];
  if (preferredCallProvider)
  {
    if (preferredCallProvider == 2)
    {
      v4 = +[CallHistoryDataSourcePredicate predicateForFaceTimeCalls];
      goto LABEL_15;
    }

    if (preferredCallProvider == 1)
    {
      v4 = +[CallHistoryDataSourcePredicate predicateForTelephonyCalls];
      goto LABEL_15;
    }

    v6 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002FEE8(v6);
    }

    goto LABEL_11;
  }

  includeThirdPartyCalls = [(RecentCallQuery *)self includeThirdPartyCalls];
  v6 = IntentHandlerDefaultLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (includeThirdPartyCalls)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No preferredCallProvider specified and thirdParty redial is enabled, not filtering by provider", buf, 2u);
    }

LABEL_11:

    v4 = 0;
    goto LABEL_15;
  }

  if (v7)
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No preferredCallProvider specified and thirdParty redial is not enabled. Filtering for 1P calls.", v9, 2u);
  }

  v4 = +[CallHistoryDataSourcePredicate predicateForTelephonyOrFaceTimeCalls];
LABEL_15:

  return v4;
}

- (id)callCapabilityPredicate
{
  callCapability = [(RecentCallQuery *)self callCapability];
  if (callCapability == 1)
  {
    v3 = +[CallHistoryDataSourcePredicate predicateForAudioCalls];
  }

  else if (callCapability == 2)
  {
    v3 = +[CallHistoryDataSourcePredicate predicateForVideoCalls];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)participantsPredicatesWithContactsDataSource:(id)source contactIdentifierCache:(id)cache coreTelephonyDataSource:(id)dataSource
{
  sourceCopy = source;
  cacheCopy = cache;
  dataSourceCopy = dataSource;
  v10 = objc_alloc_init(NSMutableArray);
  participants = [(RecentCallQuery *)self participants];
  v12 = [participants count];

  if (v12)
  {
    participants2 = [(RecentCallQuery *)self participants];
    v14 = +[CallHistoryDataSourcePredicate predicateForCallsWithNumberOfRemoteParticipants:](CallHistoryDataSourcePredicate, "predicateForCallsWithNumberOfRemoteParticipants:", [participants2 count]);

    v27 = v14;
    [v10 addObject:v14];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [(RecentCallQuery *)self participants];
    v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = [*(*(&v31 + 1) + 8 * i) tu_handlesMatchingPersonWithContactsDataSource:sourceCopy identifierToContactCache:cacheCopy];
          includeThirdPartyCalls = [(RecentCallQuery *)self includeThirdPartyCalls];
          v21 = IntentHandlerDefaultLog();
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          if (includeThirdPartyCalls)
          {
            if (v22)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "ThirdParty redial is enabled, using redial predicate that includes search for non-normalized handle values.", buf, 2u);
            }

            allRelevantISOCountryCodes = [dataSourceCopy allRelevantISOCountryCodes];
            v24 = [CallHistoryDataSourcePredicate predicateForCallToCallBackWithAnyOfTheseRemoteParticipantHandles:v19 isoCountryCodes:allRelevantISOCountryCodes];
          }

          else
          {
            if (v22)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "ThirdParty redial is not enabled, using normal recent call predicate that includes search for non-normalized handle values.", buf, 2u);
            }

            allRelevantISOCountryCodes = [dataSourceCopy allRelevantISOCountryCodes];
            v24 = [CallHistoryDataSourcePredicate predicateForCallsWithAnyOfTheseRemoteParticipantHandles:v19 isoCountryCodes:allRelevantISOCountryCodes];
          }

          v25 = v24;

          [v10 addObject:v25];
        }

        v16 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v16);
    }
  }

  return v10;
}

@end
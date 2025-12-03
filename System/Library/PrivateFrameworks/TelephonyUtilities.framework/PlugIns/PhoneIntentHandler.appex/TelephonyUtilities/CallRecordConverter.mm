@interface CallRecordConverter
+ (id)sharedInstance;
- (CallRecordConverter)init;
- (id)callRecordForRecentCall:(id)call withContactsDataSource:(id)source withCallProviderManager:(id)manager withCurrentISOCountryCodes:(id)codes;
- (id)callRecordsForRecentCalls:(id)calls withContactsDataSource:(id)source withCallProviderManager:(id)manager withCurrentISOCountryCodes:(id)codes;
- (int64_t)callCapabilityFromRecentCall:(id)call;
- (int64_t)preferredCallProviderFromRecentCall:(id)call;
@end

@implementation CallRecordConverter

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000252F0;
  block[3] = &unk_10004CC00;
  block[4] = self;
  if (qword_100057A80 != -1)
  {
    dispatch_once(&qword_100057A80, block);
  }

  v2 = qword_100057A78;

  return v2;
}

- (CallRecordConverter)init
{
  v8.receiver = self;
  v8.super_class = CallRecordConverter;
  v2 = [(CallRecordConverter *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSCache);
    recentCallIdToCallRecordCache = v2->_recentCallIdToCallRecordCache;
    v2->_recentCallIdToCallRecordCache = v3;

    v5 = objc_alloc_init(NSCache);
    handleToPersonCache = v2->_handleToPersonCache;
    v2->_handleToPersonCache = v5;
  }

  return v2;
}

- (id)callRecordsForRecentCalls:(id)calls withContactsDataSource:(id)source withCallProviderManager:(id)manager withCurrentISOCountryCodes:(id)codes
{
  callsCopy = calls;
  sourceCopy = source;
  managerCopy = manager;
  codesCopy = codes;
  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [callsCopy count]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = callsCopy;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      v16 = 0;
      do
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v31 + 1) + 8 * v16);
        recentCallIdToCallRecordCache = [(CallRecordConverter *)self recentCallIdToCallRecordCache];
        uniqueId = [v17 uniqueId];
        v20 = [recentCallIdToCallRecordCache objectForKey:uniqueId];

        recentCallIdToCallRecordCache2 = IntentHandlerDefaultLog();
        v22 = os_log_type_enabled(recentCallIdToCallRecordCache2, OS_LOG_TYPE_DEBUG);
        if (v20)
        {
          if (v22)
          {
            sub_100030B6C(&buf, v30, recentCallIdToCallRecordCache2);
          }
        }

        else
        {
          if (v22)
          {
            sub_100030BAC(v35, v17, &v36, recentCallIdToCallRecordCache2);
          }

          v20 = [(CallRecordConverter *)self callRecordForRecentCall:v17 withContactsDataSource:sourceCopy withCallProviderManager:managerCopy withCurrentISOCountryCodes:codesCopy];
          recentCallIdToCallRecordCache2 = [(CallRecordConverter *)self recentCallIdToCallRecordCache];
          uniqueId2 = [v17 uniqueId];
          [recentCallIdToCallRecordCache2 setObject:v20 forKey:uniqueId2];
        }

        [v11 addObject:v20];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v14);
  }

  v24 = [v11 copy];

  return v24;
}

- (id)callRecordForRecentCall:(id)call withContactsDataSource:(id)source withCallProviderManager:(id)manager withCurrentISOCountryCodes:(id)codes
{
  callCopy = call;
  sourceCopy = source;
  v12 = callCopy;
  v51 = sourceCopy;
  managerCopy = manager;
  codesCopy = codes;
  v53 = +[NSMutableArray array];
  v52 = callCopy;
  v49 = managerCopy;
  if ([callCopy callerIdIsBlocked])
  {
    remoteParticipantHandles = IntentHandlerDefaultLog();
    if (os_log_type_enabled(remoteParticipantHandles, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, remoteParticipantHandles, OS_LOG_TYPE_DEFAULT, "[WARN] Caller ID is blocked", buf, 2u);
    }

    goto LABEL_40;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  remoteParticipantHandles = [callCopy remoteParticipantHandles];
  v15 = [remoteParticipantHandles countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v59;
    v55 = remoteParticipantHandles;
    while (1)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v59 != v18)
        {
          objc_enumerationMutation(remoteParticipantHandles);
        }

        tu_tuHandle = [*(*(&v58 + 1) + 8 * i) tu_tuHandle];
        if (tu_tuHandle)
        {
          handleToPersonCache = [(CallRecordConverter *)self handleToPersonCache];
          v22 = [handleToPersonCache objectForKey:tu_tuHandle];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = v22;
            v24 = v17;
            goto LABEL_30;
          }

          if (v22)
          {
            v25 = IntentHandlerDefaultLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[WARN] Found an entry of unknown type in handleToPerson cache", buf, 2u);
            }

            v17 = 0;
          }

          else
          {
            isoCountryCode = [v12 isoCountryCode];
            if (isoCountryCode)
            {
              isoCountryCode2 = [v12 isoCountryCode];
              v64 = isoCountryCode2;
              v24 = [NSArray arrayWithObjects:&v64 count:1];
            }

            else
            {
              v24 = codesCopy;
            }

            v23 = [INPerson tu_personMatchingHandle:tu_tuHandle contactsDataSource:v51 isoCountryCodes:v24];

            if (v23 && ([v23 nameComponents], v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
            {
              v29 = IntentHandlerDefaultLog();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v63 = v23;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Saving person in cache: %@", buf, 0xCu);
              }

              handleToPersonCache2 = [(CallRecordConverter *)self handleToPersonCache];
              [handleToPersonCache2 setObject:v23 forKey:tu_tuHandle];
            }

            else
            {
              v31 = IntentHandlerDefaultLog();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v63 = v23;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Clearing or skipping cache for unlabeled person: %@", buf, 0xCu);
              }

              handleToPersonCache2 = [(CallRecordConverter *)self handleToPersonCache];
              [handleToPersonCache2 removeObjectForKey:tu_tuHandle];
            }

            v12 = v52;
LABEL_30:

            if (v23)
            {
              [v53 addObject:v23];
              v17 = v23;
            }

            else
            {
              v17 = 0;
            }

            remoteParticipantHandles = v55;
          }

          v32 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v63 = v17;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "person added to particpants in callrecord: %@", buf, 0xCu);
          }

          goto LABEL_37;
        }

        v22 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] Could not determine remoteParticipantHandle for CHRecentCall", buf, 2u);
        }

LABEL_37:
      }

      v16 = [remoteParticipantHandles countByEnumeratingWithState:&v58 objects:v65 count:16];
      if (!v16)
      {
        managerCopy = v49;
        goto LABEL_41;
      }
    }
  }

LABEL_40:
  v17 = 0;
LABEL_41:

  callStatus = [v12 callStatus];
  if ((kCHCallStatusOutgoing & callStatus) != 0)
  {
    v34 = 1;
  }

  else
  {
    callStatus2 = [v12 callStatus];
    if ((kCHCallStatusMissed & callStatus2) != 0)
    {
      v34 = 2;
    }

    else
    {
      callStatus3 = [v12 callStatus];
      v34 = 3;
      if ((kCHCallStatusIncoming & callStatus3) == 0)
      {
        v34 = 0;
      }
    }
  }

  v56 = v34;
  v46 = [managerCopy providerForRecentCall:v12];
  bundleIdentifier = [v46 bundleIdentifier];
  v54 = [(CallRecordConverter *)self preferredCallProviderFromRecentCall:v12];
  v48 = [(CallRecordConverter *)self callCapabilityFromRecentCall:v12];
  v38 = [INCallRecord alloc];
  uniqueId = [v12 uniqueId];
  date = [v12 date];
  [v12 duration];
  v44 = [NSNumber numberWithDouble:?];
  v39 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 read] ^ 1);
  v40 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 numberOfOccurrences]);
  identifier = [v46 identifier];
  v42 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 callerIdIsBlocked]);
  v57 = [v38 initWithIdentifier:uniqueId dateCreated:date callRecordType:v56 callCapability:v48 callDuration:v44 unseen:v39 preferredCallProvider:v54 participants:v53 numberOfCalls:v40 providerId:identifier providerBundleId:bundleIdentifier isCallerIdBlocked:v42];

  return v57;
}

- (int64_t)preferredCallProviderFromRecentCall:(id)call
{
  serviceProvider = [call serviceProvider];
  if ([serviceProvider isEqualToString:kCHServiceProviderFaceTime])
  {
    v4 = 2;
  }

  else if ([serviceProvider isEqualToString:kCHServiceProviderTelephony] & 1) != 0 || (objc_msgSend(serviceProvider, "isEqualToString:", @"com.apple.Superbox"))
  {
    v4 = 1;
  }

  else
  {
    v5 = [serviceProvider length];
    v6 = IntentHandlerDefaultLog();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_100030C24(v7);
      }

      v4 = 3;
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100030C68(v7);
      }

      v4 = 0;
    }
  }

  return v4;
}

- (int64_t)callCapabilityFromRecentCall:(id)call
{
  mediaType = [call mediaType];
  v4 = mediaType;
  if (mediaType)
  {
    if (mediaType == 2)
    {
      v5 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 0;
        v6 = "Inferring video call capability from call to redial";
        v7 = &v10;
        goto LABEL_10;
      }
    }

    else
    {
      if (mediaType != 1)
      {
        return 0;
      }

      v5 = IntentHandlerDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        v6 = "Inferring audio call capability from call to redial";
        v7 = &v11;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      }
    }
  }

  else
  {
    v5 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v6 = "[WARN] Unable to infer callCapability from call to redial because media type of that call was unknown.";
      v7 = &v9;
      goto LABEL_10;
    }
  }

  return v4;
}

@end
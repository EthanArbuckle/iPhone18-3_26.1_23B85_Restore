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
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CallRecordConverter_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance___sharedInstance;

  return v2;
}

uint64_t __37__CallRecordConverter_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance___sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (CallRecordConverter)init
{
  v8.receiver = self;
  v8.super_class = CallRecordConverter;
  v2 = [(CallRecordConverter *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    recentCallIdToCallRecordCache = v2->_recentCallIdToCallRecordCache;
    v2->_recentCallIdToCallRecordCache = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEA78]);
    handleToPersonCache = v2->_handleToPersonCache;
    v2->_handleToPersonCache = v5;
  }

  return v2;
}

- (id)callRecordsForRecentCalls:(id)calls withContactsDataSource:(id)source withCallProviderManager:(id)manager withCurrentISOCountryCodes:(id)codes
{
  v39 = *MEMORY[0x277D85DE8];
  callsCopy = calls;
  sourceCopy = source;
  managerCopy = manager;
  codesCopy = codes;
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(callsCopy, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = callsCopy;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      v16 = 0;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v32 + 1) + 8 * v16);
        recentCallIdToCallRecordCache = [(CallRecordConverter *)self recentCallIdToCallRecordCache];
        uniqueId = [v17 uniqueId];
        v20 = [recentCallIdToCallRecordCache objectForKey:uniqueId];

        recentCallIdToCallRecordCache2 = IntentHandlerDefaultLog();
        v22 = os_log_type_enabled(recentCallIdToCallRecordCache2, OS_LOG_TYPE_DEBUG);
        if (v20)
        {
          if (v22)
          {
            [CallRecordConverter callRecordsForRecentCalls:v31 withContactsDataSource:recentCallIdToCallRecordCache2 withCallProviderManager:? withCurrentISOCountryCodes:?];
          }
        }

        else
        {
          if (v22)
          {
            [CallRecordConverter callRecordsForRecentCalls:v36 withContactsDataSource:v17 withCallProviderManager:&v37 withCurrentISOCountryCodes:recentCallIdToCallRecordCache2];
          }

          v20 = [(CallRecordConverter *)self callRecordForRecentCall:v17 withContactsDataSource:sourceCopy withCallProviderManager:managerCopy withCurrentISOCountryCodes:codesCopy];
          recentCallIdToCallRecordCache2 = [(CallRecordConverter *)self recentCallIdToCallRecordCache];
          uniqueId2 = [v17 uniqueId];
          [recentCallIdToCallRecordCache2 setObject:v20 forKey:uniqueId2];
        }

        [v11 addObject:v20];
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v14);
  }

  v24 = [v11 copy];
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)callRecordForRecentCall:(id)call withContactsDataSource:(id)source withCallProviderManager:(id)manager withCurrentISOCountryCodes:(id)codes
{
  v66 = *MEMORY[0x277D85DE8];
  callCopy = call;
  sourceCopy = source;
  managerCopy = manager;
  codesCopy = codes;
  array = [MEMORY[0x277CBEB18] array];
  v52 = callCopy;
  v49 = managerCopy;
  if ([callCopy callerIdIsBlocked])
  {
    remoteParticipantHandles = IntentHandlerDefaultLog();
    if (os_log_type_enabled(remoteParticipantHandles, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2688A7000, remoteParticipantHandles, OS_LOG_TYPE_DEFAULT, "[WARN] Caller ID is blocked", buf, 2u);
    }

    goto LABEL_35;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  remoteParticipantHandles = [callCopy remoteParticipantHandles];
  v13 = [remoteParticipantHandles countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v59;
    v55 = remoteParticipantHandles;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v59 != v16)
        {
          objc_enumerationMutation(remoteParticipantHandles);
        }

        tu_tuHandle = [*(*(&v58 + 1) + 8 * i) tu_tuHandle];
        if (tu_tuHandle)
        {
          handleToPersonCache = [(CallRecordConverter *)self handleToPersonCache];
          v20 = [handleToPersonCache objectForKey:tu_tuHandle];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = v20;
            v22 = v15;
            goto LABEL_25;
          }

          if (v20)
          {
            v23 = IntentHandlerDefaultLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_2688A7000, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Found an entry of unknown type in handleToPerson cache", buf, 2u);
            }

            v15 = 0;
          }

          else
          {
            isoCountryCode = [callCopy isoCountryCode];
            if (isoCountryCode)
            {
              isoCountryCode2 = [callCopy isoCountryCode];
              v64 = isoCountryCode2;
              v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
            }

            else
            {
              v22 = codesCopy;
            }

            v21 = [MEMORY[0x277CD3E90] tu_personMatchingHandle:tu_tuHandle contactsDataSource:sourceCopy isoCountryCodes:v22];

            if (v21)
            {
              null = v21;
            }

            else
            {
              null = [MEMORY[0x277CBEB68] null];
            }

            v27 = null;
            handleToPersonCache2 = [(CallRecordConverter *)self handleToPersonCache];
            [handleToPersonCache2 setObject:v27 forKey:tu_tuHandle];

            callCopy = v52;
LABEL_25:

            if (v21)
            {
              [array addObject:v21];
              v15 = v21;
            }

            else
            {
              v15 = 0;
            }

            remoteParticipantHandles = v55;
          }

          v29 = IntentHandlerDefaultLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v63 = v15;
            _os_log_impl(&dword_2688A7000, v29, OS_LOG_TYPE_DEFAULT, "person added to particpants in callrecord: %@", buf, 0xCu);
          }

          goto LABEL_32;
        }

        v20 = IntentHandlerDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2688A7000, v20, OS_LOG_TYPE_DEFAULT, "[WARN] Could not determine remoteParticipantHandle for CHRecentCall", buf, 2u);
        }

LABEL_32:
      }

      v14 = [remoteParticipantHandles countByEnumeratingWithState:&v58 objects:v65 count:16];
      if (!v14)
      {
        managerCopy = v49;
        goto LABEL_36;
      }
    }
  }

LABEL_35:
  v15 = 0;
LABEL_36:

  callStatus = [callCopy callStatus];
  if ((*MEMORY[0x277CF7DA8] & callStatus) != 0)
  {
    v31 = 1;
  }

  else
  {
    callStatus2 = [callCopy callStatus];
    if ((*MEMORY[0x277CF7DA0] & callStatus2) != 0)
    {
      v31 = 2;
    }

    else
    {
      callStatus3 = [callCopy callStatus];
      v31 = 3;
      if ((*MEMORY[0x277CF7D98] & callStatus3) == 0)
      {
        v31 = 0;
      }
    }
  }

  v56 = v31;
  v47 = [managerCopy providerForRecentCall:callCopy];
  bundleIdentifier = [v47 bundleIdentifier];
  v34 = [(CallRecordConverter *)self preferredCallProviderFromRecentCall:callCopy];
  v54 = [(CallRecordConverter *)self callCapabilityFromRecentCall:callCopy];
  v35 = objc_alloc(MEMORY[0x277CD3AE0]);
  uniqueId = [callCopy uniqueId];
  date = [callCopy date];
  v36 = callCopy;
  v37 = MEMORY[0x277CCABB0];
  [v36 duration];
  v45 = [v37 numberWithDouble:?];
  v38 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v36, "read") ^ 1}];
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v36, "numberOfOccurrences")}];
  identifier = [v47 identifier];
  v41 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v36, "callerIdIsBlocked")}];
  v57 = [v35 initWithIdentifier:uniqueId dateCreated:date callRecordType:v56 callCapability:v54 callDuration:v45 unseen:v38 preferredCallProvider:v34 participants:array numberOfCalls:v39 providerId:identifier providerBundleId:bundleIdentifier isCallerIdBlocked:v41];

  v42 = *MEMORY[0x277D85DE8];

  return v57;
}

- (int64_t)preferredCallProviderFromRecentCall:(id)call
{
  serviceProvider = [call serviceProvider];
  if ([serviceProvider isEqualToString:*MEMORY[0x277CF7E00]])
  {
    v4 = 2;
  }

  else if ([serviceProvider isEqualToString:*MEMORY[0x277CF7E08]] & 1) != 0 || (objc_msgSend(serviceProvider, "isEqualToString:", @"com.apple.Superbox"))
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
        [CallRecordConverter preferredCallProviderFromRecentCall:v7];
      }

      v4 = 3;
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CallRecordConverter preferredCallProviderFromRecentCall:v7];
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
        _os_log_impl(&dword_2688A7000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
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

- (void)callRecordsForRecentCalls:(os_log_t)log withContactsDataSource:withCallProviderManager:withCurrentISOCountryCodes:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_2688A7000, log, OS_LOG_TYPE_DEBUG, "Converted this CHRecentCall previously, using cached converted INCallRecord.", buf, 2u);
}

- (void)callRecordsForRecentCalls:(uint8_t *)a1 withContactsDataSource:(void *)a2 withCallProviderManager:(void *)a3 withCurrentISOCountryCodes:(NSObject *)a4 .cold.2(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 uniqueId];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_2688A7000, a4, OS_LOG_TYPE_DEBUG, "Converting CHRecentCall %@ to INCallRecord.", a1, 0xCu);
}

@end
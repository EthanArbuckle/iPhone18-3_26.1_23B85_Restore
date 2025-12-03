@interface ICQRequestProvider
+ (BOOL)_keyIsEligibleForURLStringReplacement:(id)replacement;
+ (BOOL)attemptSetRequest:(id)request toPostWithJSONDict:(id)dict;
+ (id)_newAccountBagKeyForOldKey:(id)key;
+ (id)_urlReplacementDictionaryForKey:(id)key withOfferID:(id)d withNotificationID:(id)iD;
+ (void)addEntriesToPostDictionary:(id)dictionary forStub:(id)stub;
- (BOOL)willUseNewKey:(id)key offerID:(id)d notificationID:(id)iD;
- (ICQRequestProvider)initWithAccount:(id)account;
- (id)_bagURLForKey:(id)key withOfferID:(id)d withNotificationID:(id)iD;
- (id)_stringTimeOfLastBackup;
- (id)_urlForQuotaKey:(id)key offerID:(id)d notificationID:(id)iD;
- (id)getBackupDeviceUUID;
- (id)httpMethodForKey:(id)key offerID:(id)d notificationID:(id)iD;
- (id)urlForQuotaKey:(id)key offerStub:(id)stub notificationID:(id)d;
- (id)urlForUpdateOfferWithContext:(id)context;
- (void)_stringTimeOfLastBackup;
- (void)addBasicAndCloudBackupHeadersToRequest:(id)request;
- (void)addBasicHeadersToRequest:(id)request;
- (void)addCommonHeadersToRequest:(id)request;
@end

@implementation ICQRequestProvider

- (ICQRequestProvider)initWithAccount:(id)account
{
  accountCopy = account;
  v6 = [(ICQRequestProvider *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (id)urlForQuotaKey:(id)key offerStub:(id)stub notificationID:(id)d
{
  keyCopy = key;
  dCopy = d;
  stubCopy = stub;
  if ([keyCopy isEqualToString:@"quotaOfferReset"])
  {
    v11 = MEMORY[0x277CBEBC0];
    offerResetURL = [stubCopy offerResetURL];

    v13 = [v11 URLWithString:offerResetURL];

    if (!v13)
    {
      v14 = _ICQGetLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "Missing offer reset URL for reset call", v17, 2u);
      }
    }
  }

  else
  {
    offerId = [stubCopy offerId];

    v13 = [(ICQRequestProvider *)self _urlForQuotaKey:keyCopy offerID:offerId notificationID:dCopy];
  }

  return v13;
}

- (id)urlForUpdateOfferWithContext:(id)context
{
  offerId = [context offerId];
  v5 = [(ICQRequestProvider *)self _urlForQuotaKey:@"quotaUpdateOfferURL" offerID:offerId notificationID:0];

  return v5;
}

- (id)_urlForQuotaKey:(id)key offerID:(id)d notificationID:(id)iD
{
  v31 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  dCopy = d;
  iDCopy = iD;
  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412802;
    v26 = keyCopy;
    v27 = 2112;
    v28 = dCopy;
    v29 = 2112;
    v30 = iDCopy;
    _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "Creating URL for quota key %@ with offerID %@ with notificationID %@.", &v25, 0x20u);
  }

  v12 = [(ICQRequestProvider *)self _bagURLForKey:keyCopy withOfferID:dCopy withNotificationID:iDCopy];
  if (!v12)
  {
    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412802;
      v26 = keyCopy;
      v27 = 2112;
      v28 = dCopy;
      v29 = 2112;
      v30 = iDCopy;
      _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "Failed to create URL string for quota key %@ with offerID %@ with notificationID %@.", &v25, 0x20u);
    }

    goto LABEL_14;
  }

  v13 = v12;
  if ([ICQRequestProvider _keyIsEligibleForURLStringReplacement:keyCopy])
  {
    v14 = _ICQGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "Replacing words in URL string.", &v25, 2u);
    }

    v15 = [ICQRequestProvider _urlReplacementDictionaryForKey:keyCopy withOfferID:dCopy withNotificationID:iDCopy];
    v16 = [_ICQHelperFunctions replaceWordsIn:v13 with:v15];

    v13 = v16;
  }

  if ([v13 containsString:@"{offerId}"])
  {
    v17 = _ICQGetLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412802;
      v26 = keyCopy;
      v27 = 2112;
      v28 = dCopy;
      v29 = 2112;
      v30 = iDCopy;
      _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, "Failed to create URL string for quota key %@ with offerID %@ with notificationID %@. Missing offerID!", &v25, 0x20u);
    }

LABEL_14:
    v18 = 0;
    goto LABEL_23;
  }

  v18 = [MEMORY[0x277CBEBC0] URLWithString:v13];
  v19 = _ICQGetLogSystem();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      v25 = 138412802;
      v26 = keyCopy;
      v27 = 2112;
      v28 = dCopy;
      v29 = 2112;
      v30 = iDCopy;
      _os_log_impl(&dword_275572000, v19, OS_LOG_TYPE_DEFAULT, "Created URL for quota key %@ with offerID %@ with notificationID %@.", &v25, 0x20u);
    }

    v21 = v18;
  }

  else
  {
    if (v20)
    {
      account = self->_account;
      v25 = 138412802;
      v26 = v13;
      v27 = 2112;
      v28 = keyCopy;
      v29 = 2112;
      v30 = account;
      _os_log_impl(&dword_275572000, v19, OS_LOG_TYPE_DEFAULT, "invalid URL string %@ for quota key %@ account %@", &v25, 0x20u);
    }
  }

LABEL_23:
  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)addBasicHeadersToRequest:(id)request
{
  v18[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  [requestCopy aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:0];
  [requestCopy ak_addClientInfoHeader];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  abbreviation = [systemTimeZone abbreviation];
  [requestCopy setValue:abbreviation forHTTPHeaderField:@"X-MMe-Timezone"];

  v7 = MEMORY[0x277CBEAF8];
  _deviceLanguage = [MEMORY[0x277CBEAF8] _deviceLanguage];
  v18[0] = _deviceLanguage;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v10 = [v7 minimizedLanguagesFromLanguages:v9];
  v11 = [v10 componentsJoinedByString:{@", "}];

  if (v11)
  {
    [requestCopy setValue:v11 forHTTPHeaderField:@"Accept-Language"];
  }

  [requestCopy ak_addCountryHeader];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  _numberingSystem = [currentLocale _numberingSystem];
  [requestCopy setValue:_numberingSystem forHTTPHeaderField:@"X-Apple-Locale-Numbering-System"];

  v14 = [_ICQHelperFunctions standardDateFormat:3];
  [requestCopy setValue:v14 forHTTPHeaderField:@"X-Apple-Locale-Date-Format-Long"];

  v15 = [_ICQHelperFunctions standardDateFormat:1];
  [requestCopy setValue:v15 forHTTPHeaderField:@"X-Apple-Locale-Date-Format-Short"];

  v16 = MGCopyAnswer();
  if (v16)
  {
    [requestCopy setValue:v16 forHTTPHeaderField:@"X-Mme-Device-Id"];
  }

  if (+[_ICQHelperFunctions isSolariumFeatureFlagEnabled])
  {
    [requestCopy setValue:@"solarium" forHTTPHeaderField:@"X-Apple-iCloudUI-Feature"];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addBasicAndCloudBackupHeadersToRequest:(id)request
{
  requestCopy = request;
  [(ICQRequestProvider *)self addBasicHeadersToRequest:requestCopy];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v5 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
  v13 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
  if (!getBYSetupAssistantNeedsToRunSymbolLoc_ptr)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke;
    v9[3] = &unk_27A6517A8;
    v9[4] = &v10;
    __getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke(v9);
    v5 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v5)
  {
    v8 = +[ICQDaemonOfferConditions isPhotosCloudEnabled];
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v8);
  }

  if ((v5() & 1) == 0)
  {
    v6 = +[ICQDaemonOfferManager ckBackupDeviceID];
    [requestCopy setValue:v6 forHTTPHeaderField:@"X-Apple-Cloud-Bkp-Id"];

    _stringTimeOfLastBackup = [(ICQRequestProvider *)self _stringTimeOfLastBackup];
    [requestCopy setValue:_stringTimeOfLastBackup forHTTPHeaderField:@"X-Apple-Cloud-Bkp-Time"];
  }
}

- (void)addCommonHeadersToRequest:(id)request
{
  requestCopy = request;
  [(ICQRequestProvider *)self addBasicAndCloudBackupHeadersToRequest:requestCopy];
  getBackupDeviceUUID = [(ICQRequestProvider *)self getBackupDeviceUUID];
  [requestCopy setValue:getBackupDeviceUUID forHTTPHeaderField:@"X-Client-Backup-UUID"];

  [requestCopy ak_addAnisetteHeaders];
}

- (id)getBackupDeviceUUID
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ICQRequestProvider_getBackupDeviceUUID__block_invoke;
  block[3] = &unk_27A651BB8;
  block[4] = self;
  if (getBackupDeviceUUID_onceToken != -1)
  {
    dispatch_once(&getBackupDeviceUUID_onceToken, block);
  }

  return getBackupDeviceUUID_backupDeviceUUID;
}

void __41__ICQRequestProvider_getBackupDeviceUUID__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D28A40]);
  v3 = *(*(a1 + 32) + 8);
  v10 = 0;
  v4 = [v2 initWithAccount:v3 delegate:0 eventQueue:0 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __41__ICQRequestProvider_getBackupDeviceUUID__block_invoke_cold_1();
    }
  }

  else
  {
    v7 = [v4 backupDeviceUUID];
    v8 = getBackupDeviceUUID_backupDeviceUUID;
    getBackupDeviceUUID_backupDeviceUUID = v7;

    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = getBackupDeviceUUID_backupDeviceUUID;
      _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "MBManager reports backupDeviceUUID as %@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_bagURLForKey:(id)key withOfferID:(id)d withNotificationID:(id)iD
{
  v19 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v8 = [(ACAccount *)self->_account propertiesForDataclass:@"com.apple.Dataclass.Quota"];
  if (keyCopy == @"quotaRefreshOfferDetailsURL")
  {
    if (d)
    {
      v9 = @"acseGatewayV1Offer";
    }

    else
    {
      v9 = @"acseGatewayV1Notification";
    }
  }

  else
  {
    v9 = [ICQRequestProvider _newAccountBagKeyForOldKey:keyCopy];
  }

  v10 = [v8 objectForKey:v9];

  v11 = _ICQGetLogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    v13 = v9;
    if (v12)
    {
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "Using new key %@ to get url from account bag.", &v17, 0xCu);
      v13 = v9;
    }
  }

  else
  {
    v13 = keyCopy;
    if (v12)
    {
      v17 = 138412290;
      v18 = keyCopy;
      _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "Using old key %@ to get url from account bag.", &v17, 0xCu);
      v13 = keyCopy;
    }
  }

  v14 = [v8 objectForKey:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)willUseNewKey:(id)key offerID:(id)d notificationID:(id)iD
{
  keyCopy = key;
  dCopy = d;
  iDCopy = iD;
  if ([keyCopy isEqualToString:@"quotaOfferReset"])
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v12 = [(ACAccount *)self->_account propertiesForDataclass:@"com.apple.Dataclass.Quota"];
    v13 = [v12 objectForKey:keyCopy];

    v14 = [(ICQRequestProvider *)self _bagURLForKey:keyCopy withOfferID:dCopy withNotificationID:iDCopy];
    v11 = [v13 isEqualToString:v14] ^ 1;
  }

  return v11;
}

- (id)httpMethodForKey:(id)key offerID:(id)d notificationID:(id)iD
{
  keyCopy = key;
  if (-[ICQRequestProvider willUseNewKey:offerID:notificationID:](self, "willUseNewKey:offerID:notificationID:", keyCopy, d, iD) && ([keyCopy isEqualToString:@"quotaFetchOffersURL"] & 1) == 0)
  {
    if ([keyCopy isEqualToString:@"quotaRefreshOfferDetailsURL"])
    {
      v9 = @"GET";
      goto LABEL_4;
    }

    if ([keyCopy isEqualToString:@"quotaUpdateOfferURL"])
    {
      v9 = @"PUT";
      goto LABEL_4;
    }
  }

  v9 = @"POST";
LABEL_4:

  return v9;
}

+ (id)_urlReplacementDictionaryForKey:(id)key withOfferID:(id)d withNotificationID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = objc_opt_new();
  v9 = MGCopyAnswer();
  if (v9)
  {
    [v8 setObject:v9 forKeyedSubscript:@"{udId}"];
  }

  if (dCopy)
  {
    [v8 setObject:dCopy forKeyedSubscript:@"{offerId}"];
  }

  else
  {
    if (iDCopy)
    {
      uUIDString = iDCopy;
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
    }

    [v8 setObject:uUIDString forKeyedSubscript:@"{notificationId}"];
  }

  return v8;
}

+ (BOOL)_keyIsEligibleForURLStringReplacement:(id)replacement
{
  v3 = _keyIsEligibleForURLStringReplacement__onceToken;
  replacementCopy = replacement;
  if (v3 != -1)
  {
    +[ICQRequestProvider _keyIsEligibleForURLStringReplacement:];
  }

  v5 = [_keyIsEligibleForURLStringReplacement__eligibleKeys containsObject:replacementCopy];

  return v5;
}

void __60__ICQRequestProvider__keyIsEligibleForURLStringReplacement___block_invoke()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"quotaFetchOffersURL";
  v5[1] = @"quotaRefreshOfferDetailsURL";
  v5[2] = @"quotaUpdateOfferURL";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v2 = [v0 setWithArray:v1];
  v3 = _keyIsEligibleForURLStringReplacement__eligibleKeys;
  _keyIsEligibleForURLStringReplacement__eligibleKeys = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)_newAccountBagKeyForOldKey:(id)key
{
  v3 = _newAccountBagKeyForOldKey__onceToken;
  keyCopy = key;
  if (v3 != -1)
  {
    +[ICQRequestProvider _newAccountBagKeyForOldKey:];
  }

  v5 = [_newAccountBagKeyForOldKey__newAccountBagKeys objectForKeyedSubscript:keyCopy];

  return v5;
}

void __49__ICQRequestProvider__newAccountBagKeyForOldKey___block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"quotaFetchOffersURL";
  v3[1] = @"quotaUpdateOfferURL";
  v4[0] = @"acseGatewayV1Offers";
  v4[1] = @"acseGatewayV1Action";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = _newAccountBagKeyForOldKey__newAccountBagKeys;
  _newAccountBagKeyForOldKey__newAccountBagKeys = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (BOOL)attemptSetRequest:(id)request toPostWithJSONDict:(id)dict
{
  v16 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dictCopy = dict;
  [requestCopy setHTTPMethod:@"POST"];
  [requestCopy setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v13 = 0;
  v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictCopy options:1 error:&v13];
  v8 = v13;
  if (v8)
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "Could not convert message body to JSON. Error: %@", buf, 0xCu);
    }

    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICQLink addPOSTParams:dictCopy toRequest:v10];
    }
  }

  else
  {
    [requestCopy setHTTPBody:v7];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8 == 0;
}

+ (void)addEntriesToPostDictionary:(id)dictionary forStub:(id)stub
{
  v35 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  stubCopy = stub;
  v7 = stubCopy;
  if (stubCopy)
  {
    offerId = [stubCopy offerId];
    conditionsWhenChosen = [v7 conditionsWhenChosen];
    offerResetPayload = [v7 offerResetPayload];
    if (offerId)
    {
      [dictionaryCopy setObject:offerId forKey:@"offerId"];
      if (conditionsWhenChosen)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = _ICQGetLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "request: stub missing offerId", buf, 2u);
      }

      if (conditionsWhenChosen)
      {
LABEL_4:
        isPhotosCloudEnabled = [conditionsWhenChosen isPhotosCloudEnabled];
        isPhotosOptimizeEnabled = [conditionsWhenChosen isPhotosOptimizeEnabled];

        if (!offerResetPayload)
        {
          goto LABEL_22;
        }

        goto LABEL_14;
      }
    }

    v14 = _ICQGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "request: missing conditions when stub was chosen; using live conditions", buf, 2u);
    }
  }

  else
  {
    offerId = 0;
    offerResetPayload = 0;
  }

  isPhotosCloudEnabled = +[ICQDaemonOfferConditions isPhotosCloudEnabled];
  isPhotosOptimizeEnabled = +[ICQDaemonOfferConditions isPhotosOptimizeEnabled];
  if (!offerResetPayload)
  {
    goto LABEL_22;
  }

LABEL_14:
  v27 = offerResetPayload;
  v28 = offerId;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = offerResetPayload;
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        v21 = [v15 objectForKeyedSubscript:{v20, v27, v28, v29}];
        [dictionaryCopy setObject:v21 forKey:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v17);
  }

  offerResetPayload = v27;
  offerId = v28;
LABEL_22:
  if (isPhotosCloudEnabled)
  {
    v22 = @"true";
  }

  else
  {
    v22 = @"false";
  }

  [dictionaryCopy setObject:v22 forKey:{@"iCPLEnabled", v27, v28}];
  if (isPhotosOptimizeEnabled)
  {
    v23 = @"true";
  }

  else
  {
    v23 = @"false";
  }

  [dictionaryCopy setObject:v23 forKey:@"optimizeEnabled"];
  v24 = +[ICQAppLaunchLinkTracker shared];
  allDaysSinceLastShown = [v24 allDaysSinceLastShown];

  if (allDaysSinceLastShown)
  {
    [dictionaryCopy setObject:allDaysSinceLastShown forKey:@"appLaunch"];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)_stringTimeOfLastBackup
{
  if (self->_account)
  {
    v3 = objc_alloc(MEMORY[0x277D28A40]);
    account = self->_account;
    v10 = 0;
    v5 = [v3 initWithAccount:account delegate:0 eventQueue:0 error:&v10];
    v6 = v10;
    if (v6)
    {
      dateOfLastBackup = _ICQGetLogSystem();
      if (os_log_type_enabled(dateOfLastBackup, OS_LOG_TYPE_ERROR))
      {
        [ICQRequestProvider _stringTimeOfLastBackup];
      }

      icq_serverFriendlyString = 0;
    }

    else
    {
      dateOfLastBackup = [v5 dateOfLastBackup];
      icq_serverFriendlyString = [dateOfLastBackup icq_serverFriendlyString];
    }
  }

  else
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(ICQRequestProvider *)v6 _stringTimeOfLastBackup];
    }

    icq_serverFriendlyString = 0;
  }

  return icq_serverFriendlyString;
}

void __41__ICQRequestProvider_getBackupDeviceUUID__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(&dword_275572000, v0, OS_LOG_TYPE_ERROR, "%s unable to init MBManager with error: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_stringTimeOfLastBackup
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ICQRequestProvider _stringTimeOfLastBackup]";
  _os_log_debug_impl(&dword_275572000, log, OS_LOG_TYPE_DEBUG, "Account is nil, return nil for %s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end
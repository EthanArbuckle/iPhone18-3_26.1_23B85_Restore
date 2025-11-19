@interface ICQRequestProvider
+ (BOOL)_keyIsEligibleForURLStringReplacement:(id)a3;
+ (BOOL)attemptSetRequest:(id)a3 toPostWithJSONDict:(id)a4;
+ (id)_newAccountBagKeyForOldKey:(id)a3;
+ (id)_urlReplacementDictionaryForKey:(id)a3 withOfferID:(id)a4 withNotificationID:(id)a5;
+ (void)addEntriesToPostDictionary:(id)a3 forStub:(id)a4;
- (BOOL)willUseNewKey:(id)a3 offerID:(id)a4 notificationID:(id)a5;
- (ICQRequestProvider)initWithAccount:(id)a3;
- (id)_bagURLForKey:(id)a3 withOfferID:(id)a4 withNotificationID:(id)a5;
- (id)_stringTimeOfLastBackup;
- (id)_urlForQuotaKey:(id)a3 offerID:(id)a4 notificationID:(id)a5;
- (id)getBackupDeviceUUID;
- (id)httpMethodForKey:(id)a3 offerID:(id)a4 notificationID:(id)a5;
- (id)urlForQuotaKey:(id)a3 offerStub:(id)a4 notificationID:(id)a5;
- (id)urlForUpdateOfferWithContext:(id)a3;
- (void)_stringTimeOfLastBackup;
- (void)addBasicAndCloudBackupHeadersToRequest:(id)a3;
- (void)addBasicHeadersToRequest:(id)a3;
- (void)addCommonHeadersToRequest:(id)a3;
@end

@implementation ICQRequestProvider

- (ICQRequestProvider)initWithAccount:(id)a3
{
  v5 = a3;
  v6 = [(ICQRequestProvider *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (id)urlForQuotaKey:(id)a3 offerStub:(id)a4 notificationID:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if ([v8 isEqualToString:@"quotaOfferReset"])
  {
    v11 = MEMORY[0x277CBEBC0];
    v12 = [v10 offerResetURL];

    v13 = [v11 URLWithString:v12];

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
    v15 = [v10 offerId];

    v13 = [(ICQRequestProvider *)self _urlForQuotaKey:v8 offerID:v15 notificationID:v9];
  }

  return v13;
}

- (id)urlForUpdateOfferWithContext:(id)a3
{
  v4 = [a3 offerId];
  v5 = [(ICQRequestProvider *)self _urlForQuotaKey:@"quotaUpdateOfferURL" offerID:v4 notificationID:0];

  return v5;
}

- (id)_urlForQuotaKey:(id)a3 offerID:(id)a4 notificationID:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412802;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "Creating URL for quota key %@ with offerID %@ with notificationID %@.", &v25, 0x20u);
  }

  v12 = [(ICQRequestProvider *)self _bagURLForKey:v8 withOfferID:v9 withNotificationID:v10];
  if (!v12)
  {
    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412802;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "Failed to create URL string for quota key %@ with offerID %@ with notificationID %@.", &v25, 0x20u);
    }

    goto LABEL_14;
  }

  v13 = v12;
  if ([ICQRequestProvider _keyIsEligibleForURLStringReplacement:v8])
  {
    v14 = _ICQGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "Replacing words in URL string.", &v25, 2u);
    }

    v15 = [ICQRequestProvider _urlReplacementDictionaryForKey:v8 withOfferID:v9 withNotificationID:v10];
    v16 = [_ICQHelperFunctions replaceWordsIn:v13 with:v15];

    v13 = v16;
  }

  if ([v13 containsString:@"{offerId}"])
  {
    v17 = _ICQGetLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412802;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
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
      v26 = v8;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
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
      v28 = v8;
      v29 = 2112;
      v30 = account;
      _os_log_impl(&dword_275572000, v19, OS_LOG_TYPE_DEFAULT, "invalid URL string %@ for quota key %@ account %@", &v25, 0x20u);
    }
  }

LABEL_23:
  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)addBasicHeadersToRequest:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:0];
  [v4 ak_addClientInfoHeader];
  v5 = [MEMORY[0x277CBEBB0] systemTimeZone];
  v6 = [v5 abbreviation];
  [v4 setValue:v6 forHTTPHeaderField:@"X-MMe-Timezone"];

  v7 = MEMORY[0x277CBEAF8];
  v8 = [MEMORY[0x277CBEAF8] _deviceLanguage];
  v18[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v10 = [v7 minimizedLanguagesFromLanguages:v9];
  v11 = [v10 componentsJoinedByString:{@", "}];

  if (v11)
  {
    [v4 setValue:v11 forHTTPHeaderField:@"Accept-Language"];
  }

  [v4 ak_addCountryHeader];
  v12 = [MEMORY[0x277CBEAF8] currentLocale];
  v13 = [v12 _numberingSystem];
  [v4 setValue:v13 forHTTPHeaderField:@"X-Apple-Locale-Numbering-System"];

  v14 = [_ICQHelperFunctions standardDateFormat:3];
  [v4 setValue:v14 forHTTPHeaderField:@"X-Apple-Locale-Date-Format-Long"];

  v15 = [_ICQHelperFunctions standardDateFormat:1];
  [v4 setValue:v15 forHTTPHeaderField:@"X-Apple-Locale-Date-Format-Short"];

  v16 = MGCopyAnswer();
  if (v16)
  {
    [v4 setValue:v16 forHTTPHeaderField:@"X-Mme-Device-Id"];
  }

  if (+[_ICQHelperFunctions isSolariumFeatureFlagEnabled])
  {
    [v4 setValue:@"solarium" forHTTPHeaderField:@"X-Apple-iCloudUI-Feature"];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addBasicAndCloudBackupHeadersToRequest:(id)a3
{
  v4 = a3;
  [(ICQRequestProvider *)self addBasicHeadersToRequest:v4];
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
    [v4 setValue:v6 forHTTPHeaderField:@"X-Apple-Cloud-Bkp-Id"];

    v7 = [(ICQRequestProvider *)self _stringTimeOfLastBackup];
    [v4 setValue:v7 forHTTPHeaderField:@"X-Apple-Cloud-Bkp-Time"];
  }
}

- (void)addCommonHeadersToRequest:(id)a3
{
  v5 = a3;
  [(ICQRequestProvider *)self addBasicAndCloudBackupHeadersToRequest:v5];
  v4 = [(ICQRequestProvider *)self getBackupDeviceUUID];
  [v5 setValue:v4 forHTTPHeaderField:@"X-Client-Backup-UUID"];

  [v5 ak_addAnisetteHeaders];
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

- (id)_bagURLForKey:(id)a3 withOfferID:(id)a4 withNotificationID:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(ACAccount *)self->_account propertiesForDataclass:@"com.apple.Dataclass.Quota"];
  if (v7 == @"quotaRefreshOfferDetailsURL")
  {
    if (a4)
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
    v9 = [ICQRequestProvider _newAccountBagKeyForOldKey:v7];
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
    v13 = v7;
    if (v12)
    {
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "Using old key %@ to get url from account bag.", &v17, 0xCu);
      v13 = v7;
    }
  }

  v14 = [v8 objectForKey:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)willUseNewKey:(id)a3 offerID:(id)a4 notificationID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isEqualToString:@"quotaOfferReset"])
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v12 = [(ACAccount *)self->_account propertiesForDataclass:@"com.apple.Dataclass.Quota"];
    v13 = [v12 objectForKey:v8];

    v14 = [(ICQRequestProvider *)self _bagURLForKey:v8 withOfferID:v9 withNotificationID:v10];
    v11 = [v13 isEqualToString:v14] ^ 1;
  }

  return v11;
}

- (id)httpMethodForKey:(id)a3 offerID:(id)a4 notificationID:(id)a5
{
  v8 = a3;
  if (-[ICQRequestProvider willUseNewKey:offerID:notificationID:](self, "willUseNewKey:offerID:notificationID:", v8, a4, a5) && ([v8 isEqualToString:@"quotaFetchOffersURL"] & 1) == 0)
  {
    if ([v8 isEqualToString:@"quotaRefreshOfferDetailsURL"])
    {
      v9 = @"GET";
      goto LABEL_4;
    }

    if ([v8 isEqualToString:@"quotaUpdateOfferURL"])
    {
      v9 = @"PUT";
      goto LABEL_4;
    }
  }

  v9 = @"POST";
LABEL_4:

  return v9;
}

+ (id)_urlReplacementDictionaryForKey:(id)a3 withOfferID:(id)a4 withNotificationID:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = objc_opt_new();
  v9 = MGCopyAnswer();
  if (v9)
  {
    [v8 setObject:v9 forKeyedSubscript:@"{udId}"];
  }

  if (v6)
  {
    [v8 setObject:v6 forKeyedSubscript:@"{offerId}"];
  }

  else
  {
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v11 = [MEMORY[0x277CCAD78] UUID];
      v10 = [v11 UUIDString];
    }

    [v8 setObject:v10 forKeyedSubscript:@"{notificationId}"];
  }

  return v8;
}

+ (BOOL)_keyIsEligibleForURLStringReplacement:(id)a3
{
  v3 = _keyIsEligibleForURLStringReplacement__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[ICQRequestProvider _keyIsEligibleForURLStringReplacement:];
  }

  v5 = [_keyIsEligibleForURLStringReplacement__eligibleKeys containsObject:v4];

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

+ (id)_newAccountBagKeyForOldKey:(id)a3
{
  v3 = _newAccountBagKeyForOldKey__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[ICQRequestProvider _newAccountBagKeyForOldKey:];
  }

  v5 = [_newAccountBagKeyForOldKey__newAccountBagKeys objectForKeyedSubscript:v4];

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

+ (BOOL)attemptSetRequest:(id)a3 toPostWithJSONDict:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  [v5 setHTTPMethod:@"POST"];
  [v5 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v13 = 0;
  v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:1 error:&v13];
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
      [ICQLink addPOSTParams:v6 toRequest:v10];
    }
  }

  else
  {
    [v5 setHTTPBody:v7];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8 == 0;
}

+ (void)addEntriesToPostDictionary:(id)a3 forStub:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 offerId];
    v9 = [v7 conditionsWhenChosen];
    v10 = [v7 offerResetPayload];
    if (v8)
    {
      [v5 setObject:v8 forKey:@"offerId"];
      if (v9)
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

      if (v9)
      {
LABEL_4:
        v11 = [v9 isPhotosCloudEnabled];
        v12 = [v9 isPhotosOptimizeEnabled];

        if (!v10)
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
    v8 = 0;
    v10 = 0;
  }

  v11 = +[ICQDaemonOfferConditions isPhotosCloudEnabled];
  v12 = +[ICQDaemonOfferConditions isPhotosOptimizeEnabled];
  if (!v10)
  {
    goto LABEL_22;
  }

LABEL_14:
  v27 = v10;
  v28 = v8;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = v10;
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
        [v5 setObject:v21 forKey:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v17);
  }

  v10 = v27;
  v8 = v28;
LABEL_22:
  if (v11)
  {
    v22 = @"true";
  }

  else
  {
    v22 = @"false";
  }

  [v5 setObject:v22 forKey:{@"iCPLEnabled", v27, v28}];
  if (v12)
  {
    v23 = @"true";
  }

  else
  {
    v23 = @"false";
  }

  [v5 setObject:v23 forKey:@"optimizeEnabled"];
  v24 = +[ICQAppLaunchLinkTracker shared];
  v25 = [v24 allDaysSinceLastShown];

  if (v25)
  {
    [v5 setObject:v25 forKey:@"appLaunch"];
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
      v7 = _ICQGetLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ICQRequestProvider _stringTimeOfLastBackup];
      }

      v8 = 0;
    }

    else
    {
      v7 = [v5 dateOfLastBackup];
      v8 = [v7 icq_serverFriendlyString];
    }
  }

  else
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(ICQRequestProvider *)v6 _stringTimeOfLastBackup];
    }

    v8 = 0;
  }

  return v8;
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
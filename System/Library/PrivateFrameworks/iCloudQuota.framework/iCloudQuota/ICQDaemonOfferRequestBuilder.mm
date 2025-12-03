@interface ICQDaemonOfferRequestBuilder
- (ICQDaemonOfferRequestBuilder)initWithAccount:(id)account accountManager:(id)manager;
- (id)requestWithQuotaKey:(id)key reason:(id)reason offerStub:(id)stub notificationID:(id)d contextDictionary:(id)dictionary mlDaemonExtraFields:(id)fields sourceIsServerSample:(BOOL)sample;
- (void)addPremiumOffersHeaderIfNeededForRequest:(id)request;
- (void)renewAuthHeadersForRequest:(id)request completion:(id)completion;
@end

@implementation ICQDaemonOfferRequestBuilder

- (ICQDaemonOfferRequestBuilder)initWithAccount:(id)account accountManager:(id)manager
{
  accountCopy = account;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = ICQDaemonOfferRequestBuilder;
  v9 = [(ICQDaemonOfferRequestBuilder *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    v11 = [[ICQRequestProvider alloc] initWithAccount:accountCopy];
    requestProvider = v10->_requestProvider;
    v10->_requestProvider = v11;

    objc_storeStrong(&v10->_accountManager, manager);
  }

  return v10;
}

- (id)requestWithQuotaKey:(id)key reason:(id)reason offerStub:(id)stub notificationID:(id)d contextDictionary:(id)dictionary mlDaemonExtraFields:(id)fields sourceIsServerSample:(BOOL)sample
{
  v90 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  stubCopy = stub;
  dCopy = d;
  dictionaryCopy = dictionary;
  fieldsCopy = fields;
  v20 = [key copy];
  v21 = [(__CFString *)v20 isEqualToString:@"buddy:quotaFetchOffersURL"];
  if (v21)
  {
    v22 = @"quotaFetchOffersURL";

    v20 = v22;
  }

  v23 = [(ICQRequestProvider *)self->_requestProvider urlForQuotaKey:v20 offerStub:stubCopy notificationID:dCopy];
  v24 = v23;
  if (v23)
  {
    v82 = v23;
    v83 = fieldsCopy;
    v25 = [MEMORY[0x277CCAB70] requestWithURL:v23 cachePolicy:1 timeoutInterval:30.0];
    requestProvider = self->_requestProvider;
    offerId = [stubCopy offerId];
    LODWORD(requestProvider) = [(ICQRequestProvider *)requestProvider willUseNewKey:v20 offerID:offerId notificationID:dCopy];

    v81 = v21;
    if (!requestProvider)
    {
      v84[0] = @"event";
      v84[1] = @"ck_hw_id";
      v85[0] = @"quota_alert";
      v85[1] = @"ALL";
      v84[2] = @"dsid";
      aa_personID = [(ACAccount *)self->_account aa_personID];
      v85[2] = aa_personID;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];
      v36 = [v35 mutableCopy];

      [v36 setObject:reasonCopy forKeyedSubscript:@"reason"];
      if (stubCopy)
      {
        [ICQRequestProvider addEntriesToPostDictionary:v36 forStub:stubCopy];
        v37 = v83;
      }

      else
      {
        v37 = v83;
        if ([(__CFString *)v20 isEqualToString:@"quotaFetchOffersURL"])
        {
          if (sample)
          {
            [v25 setValue:@"true" forHTTPHeaderField:@"X-Apple-All-Device-Offers"];
            [v25 setValue:@"t" forHTTPHeaderField:@"X-Apple-InvoiceEvent-Simulate"];
            [v25 setValue:@"AlmostFull" forHTTPHeaderField:@"X-Apple-QuotaEvent-Simulate"];
          }

          else
          {
            [ICQRequestProvider addEntriesToPostDictionary:v36 forStub:0];
          }

          if ([MEMORY[0x277CEE470] deviceOffersContainType:2])
          {
            [v25 setValue:@"true" forHTTPHeaderField:@"X-Apple-Storage-Has-SubscriptionOffer"];
          }
        }
      }

      if (_isWAPIDevice_onceToken != -1)
      {
        [ICQDaemonOfferRequestBuilder requestWithQuotaKey:reason:offerStub:notificationID:contextDictionary:mlDaemonExtraFields:sourceIsServerSample:];
      }

      if (_isWAPIDevice_sIsWAPIDevice == 1)
      {
        [v36 setObject:@"true" forKey:@"useWlanTerm"];
      }

      if (dCopy)
      {
        [v36 setObject:dCopy forKey:@"notificationId"];
      }

      if (dictionaryCopy)
      {
        [v36 setObject:dictionaryCopy forKey:@"contextDictionary"];
      }

      if (v37)
      {
        v60 = _ICQGetLogSystem();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v87 = v83;
          _os_log_impl(&dword_275572000, v60, OS_LOG_TYPE_DEFAULT, "[SUBD] Setting extra request fields [%@].", buf, 0xCu);
        }

        [v36 addEntriesFromDictionary:v83];
      }

      v61 = [v36 copy];
      v62 = _ICQGetLogSystem();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v87 = v61;
        _os_log_impl(&dword_275572000, v62, OS_LOG_TYPE_DEFAULT, "fetchOffer(s) with postDict %@", buf, 0xCu);
      }

      v63 = [ICQRequestProvider attemptSetRequest:v25 toPostWithJSONDict:v61];
      if (!v63)
      {
        v33 = 0;
LABEL_76:
        fieldsCopy = v83;

        v24 = v82;
        goto LABEL_77;
      }

      v80 = dictionaryCopy;
LABEL_67:
      v64 = reasonCopy;
      [(ICQDaemonOfferRequestBuilder *)self addPremiumOffersHeaderIfNeededForRequest:v25];
      if (v81)
      {
        [v25 setValue:@"true" forHTTPHeaderField:@"X-Apple-Storage-Include-BuddyOffer"];
      }

      account = self->_account;
      accountStore = [(_ICQAccountManager *)self->_accountManager accountStore];
      v67 = [_ICQHelperFunctions isBackupEnabledForAccount:account accountStore:accountStore];

      if (v67)
      {
        [v25 setValue:@"true" forHTTPHeaderField:@"X-Apple-Storage-Include-BackupOffer"];
      }

      [(ICQRequestProvider *)self->_requestProvider addCommonHeadersToRequest:v25];
      ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
      ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
      v70 = ams_activeiTunesAccount;
      if (ams_activeiTunesAccount)
      {
        ams_DSID = [ams_activeiTunesAccount ams_DSID];

        if (ams_DSID)
        {
          ams_DSID2 = [v70 ams_DSID];
          stringValue = [ams_DSID2 stringValue];
          [v25 setValue:stringValue forHTTPHeaderField:@"X-Apple-Itunes-DSID"];
        }
      }

      v33 = [v25 copy];

      reasonCopy = v64;
      dictionaryCopy = v80;
      goto LABEL_76;
    }

    v77 = dCopy;
    v80 = dictionaryCopy;
    conditionsWhenChosen = [stubCopy conditionsWhenChosen];

    if (conditionsWhenChosen)
    {
      conditionsWhenChosen2 = [stubCopy conditionsWhenChosen];
      isPhotosCloudEnabled = [conditionsWhenChosen2 isPhotosCloudEnabled];

      conditionsWhenChosen3 = [stubCopy conditionsWhenChosen];
      isPhotosOptimizeEnabled = [conditionsWhenChosen3 isPhotosOptimizeEnabled];
    }

    else
    {
      isPhotosCloudEnabled = +[ICQDaemonOfferConditions isPhotosCloudEnabled];
      isPhotosOptimizeEnabled = +[ICQDaemonOfferConditions isPhotosOptimizeEnabled];
    }

    if (isPhotosCloudEnabled)
    {
      v38 = @"true";
    }

    else
    {
      v38 = @"false";
    }

    v39 = v38;
    if (isPhotosOptimizeEnabled)
    {
      v40 = @"true";
    }

    else
    {
      v40 = @"false";
    }

    v41 = v40;
    v78 = v41;
    if (v20 == @"quotaFetchOffersURL")
    {
      v42 = v41;
      v43 = objc_opt_new();
      v36 = v43;
      if (reasonCopy)
      {
        v44 = reasonCopy;
      }

      else
      {
        v44 = &stru_288431E38;
      }

      [v43 setObject:v44 forKeyedSubscript:@"reason"];
      [v36 setObject:v39 forKey:@"iCPLEnabled"];
      [v36 setObject:v42 forKey:@"optimizeEnabled"];
      v45 = +[ICQAppLaunchLinkTracker shared];
      allDaysSinceLastShown = [v45 allDaysSinceLastShown];

      if (allDaysSinceLastShown)
      {
        [v36 setObject:allDaysSinceLastShown forKey:@"appLaunch"];
      }

      if (sample)
      {
        [v25 setValue:@"true" forHTTPHeaderField:@"X-Apple-All-Device-Offers"];
        [v25 setValue:@"t" forHTTPHeaderField:@"X-Apple-InvoiceEvent-Simulate"];
        [v25 setValue:@"AlmostFull" forHTTPHeaderField:@"X-Apple-QuotaEvent-Simulate"];
      }

      if ([MEMORY[0x277CEE470] deviceOffersContainType:2])
      {
        [v25 setValue:@"true" forHTTPHeaderField:@"X-Apple-Storage-Has-SubscriptionOffer"];
      }

      if (!v36)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (v20 != @"quotaRefreshOfferDetailsURL")
      {
        v36 = 0;
LABEL_47:
        v57 = self->_requestProvider;
        offerId2 = [stubCopy offerId];
        v59 = [(ICQRequestProvider *)v57 httpMethodForKey:v20 offerID:offerId2 notificationID:dCopy];
        [v25 setHTTPMethod:v59];

        goto LABEL_67;
      }

      v47 = MEMORY[0x277CCACE0];
      v48 = [v25 URL];
      v49 = [v47 componentsWithURL:v48 resolvingAgainstBaseURL:1];

      v50 = [MEMORY[0x277CCAD18] queryItemWithName:@"photos-icp" value:v39];
      [MEMORY[0x277CCAD18] queryItemWithName:@"photos-optimize" value:v78];
      v79 = v50;
      v89 = v88 = v50;
      v76 = v89;
      v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:2];
      [v49 setQueryItems:v51];

      v52 = MEMORY[0x277CCAB70];
      v53 = [v49 URL];
      v54 = [v52 requestWithURL:v53 cachePolicy:1 timeoutInterval:30.0];

      v25 = v54;
      [v54 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
      dCopy = v77;
      if (v83 && [v83 count])
      {
        v55 = _ICQGetLogSystem();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v87 = v83;
          _os_log_impl(&dword_275572000, v55, OS_LOG_TYPE_DEFAULT, "[SUBD] Setting extra request fields [%@].", buf, 0xCu);
        }

        v36 = [v83 mutableCopy];
      }

      else
      {
        v36 = 0;
      }

      if (!v36)
      {
        goto LABEL_47;
      }
    }

    if (![ICQRequestProvider attemptSetRequest:v25 toPostWithJSONDict:v36])
    {
      v56 = _ICQGetLogSystem();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        [ICQDaemonOfferRequestBuilder requestWithQuotaKey:v56 reason:? offerStub:? notificationID:? contextDictionary:? mlDaemonExtraFields:? sourceIsServerSample:?];
      }

      v25 = 0;
    }

    goto LABEL_47;
  }

  v25 = _ICQGetLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [ICQDaemonOfferRequestBuilder requestWithQuotaKey:v25 reason:? offerStub:? notificationID:? contextDictionary:? mlDaemonExtraFields:? sourceIsServerSample:?];
  }

  v33 = 0;
LABEL_77:

  v74 = *MEMORY[0x277D85DE8];

  return v33;
}

- (void)renewAuthHeadersForRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  account = self->_account;
  accountManager = self->_accountManager;
  requestCopy = request;
  accountStore = [(_ICQAccountManager *)accountManager accountStore];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__ICQDaemonOfferRequestBuilder_renewAuthHeadersForRequest_completion___block_invoke;
  v12[3] = &unk_27A651608;
  v13 = completionCopy;
  v11 = completionCopy;
  [requestCopy icq_renewAuthorizationHeadersForAccount:account store:accountStore completion:v12];
}

uint64_t __70__ICQDaemonOfferRequestBuilder_renewAuthHeadersForRequest_completion___block_invoke(uint64_t a1, char a2)
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __70__ICQDaemonOfferRequestBuilder_renewAuthHeadersForRequest_completion___block_invoke_cold_1(a2, v4);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)addPremiumOffersHeaderIfNeededForRequest:(id)request
{
  requestCopy = request;
  v4 = [_ICQHelperFunctions defaultValueForKey:@"_ICQEnableServerPremiumOffers"];
  v5 = v4;
  if (v4 && [v4 BOOLValue])
  {
    [requestCopy setValue:@"true" forHTTPHeaderField:@"x-apple-opt-in-flow"];
  }

  v6 = [_ICQHelperFunctions defaultValueForKey:@"_ICQAddFetchOffersHeaders"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__ICQDaemonOfferRequestBuilder_addPremiumOffersHeaderIfNeededForRequest___block_invoke;
  v8[3] = &unk_27A651630;
  v9 = requestCopy;
  v7 = requestCopy;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

void __73__ICQDaemonOfferRequestBuilder_addPremiumOffersHeaderIfNeededForRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [*(a1 + 32) setValue:v5 forHTTPHeaderField:v6];
    }
  }
}

void __70__ICQDaemonOfferRequestBuilder_renewAuthHeadersForRequest_completion___block_invoke_cold_1(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_275572000, a2, OS_LOG_TYPE_DEBUG, "ICQDaemonOfferRequestBuilder renewAuthHeadersForRequest validation completed with success: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end
@interface ICQDaemonOfferRequestBuilder
- (ICQDaemonOfferRequestBuilder)initWithAccount:(id)a3 accountManager:(id)a4;
- (id)requestWithQuotaKey:(id)a3 reason:(id)a4 offerStub:(id)a5 notificationID:(id)a6 contextDictionary:(id)a7 mlDaemonExtraFields:(id)a8 sourceIsServerSample:(BOOL)a9;
- (void)addPremiumOffersHeaderIfNeededForRequest:(id)a3;
- (void)renewAuthHeadersForRequest:(id)a3 completion:(id)a4;
@end

@implementation ICQDaemonOfferRequestBuilder

- (ICQDaemonOfferRequestBuilder)initWithAccount:(id)a3 accountManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ICQDaemonOfferRequestBuilder;
  v9 = [(ICQDaemonOfferRequestBuilder *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    v11 = [[ICQRequestProvider alloc] initWithAccount:v7];
    requestProvider = v10->_requestProvider;
    v10->_requestProvider = v11;

    objc_storeStrong(&v10->_accountManager, a4);
  }

  return v10;
}

- (id)requestWithQuotaKey:(id)a3 reason:(id)a4 offerStub:(id)a5 notificationID:(id)a6 contextDictionary:(id)a7 mlDaemonExtraFields:(id)a8 sourceIsServerSample:(BOOL)a9
{
  v90 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [a3 copy];
  v21 = [(__CFString *)v20 isEqualToString:@"buddy:quotaFetchOffersURL"];
  if (v21)
  {
    v22 = @"quotaFetchOffersURL";

    v20 = v22;
  }

  v23 = [(ICQRequestProvider *)self->_requestProvider urlForQuotaKey:v20 offerStub:v16 notificationID:v17];
  v24 = v23;
  if (v23)
  {
    v82 = v23;
    v83 = v19;
    v25 = [MEMORY[0x277CCAB70] requestWithURL:v23 cachePolicy:1 timeoutInterval:30.0];
    requestProvider = self->_requestProvider;
    v27 = [v16 offerId];
    LODWORD(requestProvider) = [(ICQRequestProvider *)requestProvider willUseNewKey:v20 offerID:v27 notificationID:v17];

    v81 = v21;
    if (!requestProvider)
    {
      v84[0] = @"event";
      v84[1] = @"ck_hw_id";
      v85[0] = @"quota_alert";
      v85[1] = @"ALL";
      v84[2] = @"dsid";
      v34 = [(ACAccount *)self->_account aa_personID];
      v85[2] = v34;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];
      v36 = [v35 mutableCopy];

      [v36 setObject:v15 forKeyedSubscript:@"reason"];
      if (v16)
      {
        [ICQRequestProvider addEntriesToPostDictionary:v36 forStub:v16];
        v37 = v83;
      }

      else
      {
        v37 = v83;
        if ([(__CFString *)v20 isEqualToString:@"quotaFetchOffersURL"])
        {
          if (a9)
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

      if (v17)
      {
        [v36 setObject:v17 forKey:@"notificationId"];
      }

      if (v18)
      {
        [v36 setObject:v18 forKey:@"contextDictionary"];
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
        v19 = v83;

        v24 = v82;
        goto LABEL_77;
      }

      v80 = v18;
LABEL_67:
      v64 = v15;
      [(ICQDaemonOfferRequestBuilder *)self addPremiumOffersHeaderIfNeededForRequest:v25];
      if (v81)
      {
        [v25 setValue:@"true" forHTTPHeaderField:@"X-Apple-Storage-Include-BuddyOffer"];
      }

      account = self->_account;
      v66 = [(_ICQAccountManager *)self->_accountManager accountStore];
      v67 = [_ICQHelperFunctions isBackupEnabledForAccount:account accountStore:v66];

      if (v67)
      {
        [v25 setValue:@"true" forHTTPHeaderField:@"X-Apple-Storage-Include-BackupOffer"];
      }

      [(ICQRequestProvider *)self->_requestProvider addCommonHeadersToRequest:v25];
      v68 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
      v69 = [v68 ams_activeiTunesAccount];
      v70 = v69;
      if (v69)
      {
        v71 = [v69 ams_DSID];

        if (v71)
        {
          v72 = [v70 ams_DSID];
          v73 = [v72 stringValue];
          [v25 setValue:v73 forHTTPHeaderField:@"X-Apple-Itunes-DSID"];
        }
      }

      v33 = [v25 copy];

      v15 = v64;
      v18 = v80;
      goto LABEL_76;
    }

    v77 = v17;
    v80 = v18;
    v28 = [v16 conditionsWhenChosen];

    if (v28)
    {
      v29 = [v16 conditionsWhenChosen];
      v30 = [v29 isPhotosCloudEnabled];

      v31 = [v16 conditionsWhenChosen];
      v32 = [v31 isPhotosOptimizeEnabled];
    }

    else
    {
      v30 = +[ICQDaemonOfferConditions isPhotosCloudEnabled];
      v32 = +[ICQDaemonOfferConditions isPhotosOptimizeEnabled];
    }

    if (v30)
    {
      v38 = @"true";
    }

    else
    {
      v38 = @"false";
    }

    v39 = v38;
    if (v32)
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
      if (v15)
      {
        v44 = v15;
      }

      else
      {
        v44 = &stru_288431E38;
      }

      [v43 setObject:v44 forKeyedSubscript:@"reason"];
      [v36 setObject:v39 forKey:@"iCPLEnabled"];
      [v36 setObject:v42 forKey:@"optimizeEnabled"];
      v45 = +[ICQAppLaunchLinkTracker shared];
      v46 = [v45 allDaysSinceLastShown];

      if (v46)
      {
        [v36 setObject:v46 forKey:@"appLaunch"];
      }

      if (a9)
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
        v58 = [v16 offerId];
        v59 = [(ICQRequestProvider *)v57 httpMethodForKey:v20 offerID:v58 notificationID:v17];
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
      v17 = v77;
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

- (void)renewAuthHeadersForRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  account = self->_account;
  accountManager = self->_accountManager;
  v9 = a3;
  v10 = [(_ICQAccountManager *)accountManager accountStore];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__ICQDaemonOfferRequestBuilder_renewAuthHeadersForRequest_completion___block_invoke;
  v12[3] = &unk_27A651608;
  v13 = v6;
  v11 = v6;
  [v9 icq_renewAuthorizationHeadersForAccount:account store:v10 completion:v12];
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

- (void)addPremiumOffersHeaderIfNeededForRequest:(id)a3
{
  v3 = a3;
  v4 = [_ICQHelperFunctions defaultValueForKey:@"_ICQEnableServerPremiumOffers"];
  v5 = v4;
  if (v4 && [v4 BOOLValue])
  {
    [v3 setValue:@"true" forHTTPHeaderField:@"x-apple-opt-in-flow"];
  }

  v6 = [_ICQHelperFunctions defaultValueForKey:@"_ICQAddFetchOffersHeaders"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__ICQDaemonOfferRequestBuilder_addPremiumOffersHeaderIfNeededForRequest___block_invoke;
  v8[3] = &unk_27A651630;
  v9 = v3;
  v7 = v3;
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
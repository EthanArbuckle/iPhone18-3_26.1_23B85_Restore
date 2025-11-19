@interface SFAppAutoFillOneTimeCodeProvider
+ (BOOL)enableCodesFromNotifications;
- (BOOL)_appWithAppIdentifierIsWebBrowser:(id)a3;
- (BOOL)isOneTimeCodeAutoDeletionEnabled;
- (SFAppAutoFillOneTimeCodeProvider)initWithOptions:(unint64_t)a3;
- (id)_associatedDomainEntriesForAppWithIdentifier:(id)a3;
- (id)_mostRecentlyReceivedOneTimeCode;
- (id)_orderedCodesFromOneTimeCodesAndDomainBindingResultsBySource:(id)a3;
- (id)_savedAccountsWithPasswordsForURL:(id)a3 inContext:(id)a4;
- (id)_secureURLWithDomain:(id)a3;
- (id)_sortedOneTimeCodesFromSavedAccounts:(id)a3 context:(id)a4;
- (id)currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs:(id)a3 fieldClassification:(int64_t)a4;
- (id)currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs:(id)a3 fieldClassification:(int64_t)a4 inContext:(id)a5;
- (id)currentOneTimeCodesWithAppIdentifier:(id)a3 website:(id)a4 usernameHint:(id)a5 fieldClassification:(int64_t)a6;
- (id)currentOneTimeCodesWithAuditToken:(id *)a3 website:(id)a4 usernameHint:(id)a5 fieldClassification:(int64_t)a6;
- (int64_t)_domainBindingForRecievedOneTimeCode:(id)a3 forAppWithIdentifier:(id)a4 websiteURL:(id)a5 hasDomainBinding:(BOOL *)a6;
- (int64_t)_url:(id)a3 matchesURLFromOriginBoundCode:(id)a4;
- (void)_consumeOneTimeCode:(id)a3;
- (void)_fetchOneTimeCodeAutoDeletionPreference;
- (void)_notifyOneTimeCodeObserver;
- (void)_processOneTimeCodeFromMail:(id)a3 withTimestamp:(id)a4 andMessageID:(int64_t)a5;
- (void)_processOneTimeCodeFromMessages:(id)a3;
- (void)_processReceivedOneTimeCode:(id)a3 fromSource:(int64_t)a4;
- (void)_startGeneratorTimer;
- (void)_stopGeneratorTimer;
- (void)_validateCurrentOneTimeCodes;
- (void)addObserver:(id)a3;
- (void)addObserver:(id)a3 forOneTimeCode:(id)a4;
- (void)consumeCurrentOneTimeCode;
- (void)consumeMessagesOneTimeCodeWithGUID:(id)a3;
- (void)consumeOneTimeCode:(id)a3;
- (void)oneTimeCodeClient:(id)a3 detectedOneTimeCodes:(id)a4;
- (void)removeObserver:(id)a3;
- (void)removeObserverForOneTimeCode:(id)a3;
- (void)test_deliverOneTimeCode:(id)a3 fromSource:(int64_t)a4;
@end

@implementation SFAppAutoFillOneTimeCodeProvider

- (SFAppAutoFillOneTimeCodeProvider)initWithOptions:(unint64_t)a3
{
  v3 = a3;
  v28.receiver = self;
  v28.super_class = SFAppAutoFillOneTimeCodeProvider;
  v4 = [(SFAppAutoFillOneTimeCodeProvider *)&v28 init];
  if (v4)
  {
    objc_initWeak(&location, v4);
    v5 = dispatch_queue_create("com.apple.SafariFoundation.SFAppAutoFillOneTimeCodeProvider.internal", 0);
    internalQueue = v4->_internalQueue;
    v4->_internalQueue = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    currentReceivedOneTimeCodesBySource = v4->_currentReceivedOneTimeCodesBySource;
    v4->_currentReceivedOneTimeCodesBySource = v7;

    if ((v3 & 1) == 0)
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x2050000000;
      v9 = getIMOneTimeCodeAcceleratorClass_softClass;
      v37 = getIMOneTimeCodeAcceleratorClass_softClass;
      if (!getIMOneTimeCodeAcceleratorClass_softClass)
      {
        v29 = MEMORY[0x277D85DD0];
        v30 = 3221225472;
        v31 = __getIMOneTimeCodeAcceleratorClass_block_invoke;
        v32 = &unk_279B61628;
        v33 = &v34;
        __getIMOneTimeCodeAcceleratorClass_block_invoke(&v29);
        v9 = v35[3];
      }

      v10 = v9;
      _Block_object_dispose(&v34, 8);
      v11 = [v9 alloc];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __52__SFAppAutoFillOneTimeCodeProvider_initWithOptions___block_invoke;
      v25[3] = &unk_279B61200;
      objc_copyWeak(&v26, &location);
      v12 = [v11 initWithBlockForUpdates:v25];
      messagesOneTimeCodeAccelerator = v4->_messagesOneTimeCodeAccelerator;
      v4->_messagesOneTimeCodeAccelerator = v12;

      [(SFAppAutoFillOneTimeCodeProvider *)v4 _fetchOneTimeCodeAutoDeletionPreference];
      objc_destroyWeak(&v26);
    }

    if ((v3 & 2) == 0)
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x2050000000;
      v14 = getEMOneTimeCodeAcceleratorClass_softClass;
      v37 = getEMOneTimeCodeAcceleratorClass_softClass;
      if (!getEMOneTimeCodeAcceleratorClass_softClass)
      {
        v29 = MEMORY[0x277D85DD0];
        v30 = 3221225472;
        v31 = __getEMOneTimeCodeAcceleratorClass_block_invoke;
        v32 = &unk_279B61628;
        v33 = &v34;
        __getEMOneTimeCodeAcceleratorClass_block_invoke(&v29);
        v14 = v35[3];
      }

      v15 = v14;
      _Block_object_dispose(&v34, 8);
      v16 = [v14 alloc];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __52__SFAppAutoFillOneTimeCodeProvider_initWithOptions___block_invoke_3;
      v23[3] = &unk_279B61250;
      objc_copyWeak(&v24, &location);
      v17 = [v16 initWithUpdateBlock:v23];
      mailOneTimeCodeAccelerator = v4->_mailOneTimeCodeAccelerator;
      v4->_mailOneTimeCodeAccelerator = v17;

      objc_destroyWeak(&v24);
    }

    if ([objc_opt_class() enableCodesFromNotifications])
    {
      if ([objc_opt_class() useUserNotificationsOneTimeCodeSupport])
      {
        getUNOneTimeCodeClientClass();
        if (objc_opt_respondsToSelector())
        {
          v19 = [getUNOneTimeCodeClientClass() currentClient];
          notificationsOneTimeCodeClient = v4->_notificationsOneTimeCodeClient;
          v4->_notificationsOneTimeCodeClient = v19;

          [(UNOneTimeCodeClient *)v4->_notificationsOneTimeCodeClient addObserver:v4];
        }
      }
    }

    v21 = v4;
    objc_destroyWeak(&location);
  }

  return v4;
}

void __52__SFAppAutoFillOneTimeCodeProvider_initWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__SFAppAutoFillOneTimeCodeProvider_initWithOptions___block_invoke_2;
    v7[3] = &unk_279B611D8;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void __52__SFAppAutoFillOneTimeCodeProvider_initWithOptions___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) firstObject];
  [v1 _processOneTimeCodeFromMessages:v2];
}

void __52__SFAppAutoFillOneTimeCodeProvider_initWithOptions___block_invoke_3(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = WeakRetained[8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__SFAppAutoFillOneTimeCodeProvider_initWithOptions___block_invoke_4;
    v12[3] = &unk_279B61228;
    v13 = WeakRetained;
    v14 = v7;
    v15 = v8;
    v16 = a4;
    dispatch_async(v11, v12);
  }
}

- (id)currentOneTimeCodesWithAuditToken:(id *)a3 website:(id)a4 usernameHint:(id)a5 fieldClassification:(int64_t)a6
{
  v10 = a4;
  v11 = a5;
  v23 = *a3;
  v12 = WBSApplicationIdentifierFromAuditToken();
  if (!v12)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SFAppAutoFillOneTimeCodeProvider *)v13 currentOneTimeCodesWithAuditToken:v14 website:v15 usernameHint:v16 fieldClassification:v17, v18, v19, v20];
    }
  }

  v21 = [(SFAppAutoFillOneTimeCodeProvider *)self currentOneTimeCodesWithAppIdentifier:v12 website:v10 usernameHint:v11 fieldClassification:a6, *v23.var0, *&v23.var0[4]];

  return v21;
}

- (id)currentOneTimeCodesWithAppIdentifier:(id)a3 website:(id)a4 usernameHint:(id)a5 fieldClassification:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277CBEB18] array];
  internalQueue = self->_internalQueue;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke;
  v24 = &unk_279B612F0;
  v25 = self;
  v26 = v10;
  v27 = v11;
  v28 = v13;
  v29 = v12;
  v30 = a6;
  v15 = v12;
  v16 = v13;
  v17 = v11;
  v18 = v10;
  dispatch_sync(internalQueue, &v21);
  v19 = [v16 copy];

  return v19;
}

void __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke_2;
  activity_block[3] = &unk_279B612F0;
  v7 = *(a1 + 32);
  v2 = *(&v7 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v9 = v7;
  v10 = v5;
  v6 = *(a1 + 64);
  v12 = *(a1 + 72);
  v11 = v6;
  _os_activity_initiate(&dword_26450F000, "Retrieving Current One-Time Codes for App", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke_2(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _validateCurrentOneTimeCodes];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke_3;
  v32[3] = &unk_279B61278;
  v32[4] = v3;
  v33 = v2;
  v34 = *(a1 + 48);
  v35 = &v37;
  v36 = &v41;
  v5 = [v4 safari_mapAndFilterKeysAndObjectsUsingBlock:v32];
  v6 = *(a1 + 56);
  v7 = [*(a1 + 32) _orderedCodesFromOneTimeCodesAndDomainBindingResultsBySource:v5];
  [v6 addObjectsFromArray:v7];

  if (*(v38 + 24) != 1 || (v42[3] & 1) == 0)
  {
    if ([*(a1 + 56) count])
    {
      v8 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26450F000, v8, OS_LOG_TYPE_INFO, "Will return at least the currently available one-time code.", buf, 2u);
      }
    }

    v9 = +[SFAutoFillFeatureManager sharedFeatureManager];
    v10 = [v9 shouldAutoFillPasswordsFromKeychain];

    if (v10)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 72);
        *buf = 67109120;
        LODWORD(v46) = v12;
        _os_log_impl(&dword_26450F000, v11, OS_LOG_TYPE_INFO, "Attempting to return a TOTP generated code. classification:%d", buf, 8u);
      }

      if (*(a1 + 72) == 2 && [*(a1 + 40) length])
      {
        if (*(a1 + 48) && [*(a1 + 32) _appWithAppIdentifierIsWebBrowser:*(a1 + 40)])
        {
          v13 = WBS_LOG_CHANNEL_PREFIXAutoFill();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(a1 + 40);
            v15 = *(a1 + 48);
            *buf = 138412803;
            v46 = v14;
            v47 = 2160;
            v48 = 1752392040;
            v49 = 2117;
            v50 = v15;
            _os_log_impl(&dword_26450F000, v13, OS_LOG_TYPE_DEFAULT, "App %@ has web browser entitlement. Getting passwords for website URL %{sensitive, mask.hash}@.", buf, 0x20u);
          }

          v16 = [*(a1 + 32) _savedAccountsWithPasswordsForURL:*(a1 + 48) inContext:0];
        }

        else
        {
          v17 = WBS_LOG_CHANNEL_PREFIXAutoFill();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(a1 + 40);
            *buf = 141558275;
            v46 = 1752392040;
            v47 = 2117;
            v48 = v18;
            _os_log_impl(&dword_26450F000, v17, OS_LOG_TYPE_DEFAULT, "Fetching passwords for associated domains for app %{sensitive, mask.hash}@.", buf, 0x16u);
          }

          v19 = [*(a1 + 32) _associatedDomainEntriesForAppWithIdentifier:*(a1 + 40)];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke_58;
          v30[3] = &unk_279B612C8;
          v30[4] = *(a1 + 32);
          v31 = *(a1 + 64);
          v20 = [v19 safari_mapAndFilterObjectsUsingBlock:v30];
          v16 = [v20 safari_flattenedArray];
        }

        v21 = *(a1 + 56);
        v22 = *(a1 + 32);
        v23 = [MEMORY[0x277D49B30] defaultContext];
        v24 = [v22 _sortedOneTimeCodesFromSavedAccounts:v16 context:v23];
        [v21 addObjectsFromArray:v24];

        v25 = WBS_LOG_CHANNEL_PREFIXAutoFill();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [*(a1 + 56) count];
          v27 = [*(a1 + 56) count];
          v28 = "s";
          if (v27 == 1)
          {
            v28 = "";
          }

          *buf = 134218242;
          v46 = v26;
          v47 = 2080;
          v48 = v28;
          _os_log_impl(&dword_26450F000, v25, OS_LOG_TYPE_DEFAULT, "Returning %ld available one-time code%s", buf, 0x16u);
        }
      }
    }
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  v29 = *MEMORY[0x277D85DE8];
}

id __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = 0;
  v5 = [*(a1 + 32) _domainBindingForRecievedOneTimeCode:v4 forAppWithIdentifier:*(a1 + 40) websiteURL:*(a1 + 48) hasDomainBinding:&v9];
  *(*(*(a1 + 56) + 8) + 24) = (*(*(*(a1 + 56) + 8) + 24) | v9) & 1;
  *(*(*(a1 + 64) + 8) + 24) |= v5 != 0;
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D49A80]);
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    v5 = [v6 initWithFirst:v4 second:v7];
  }

  return v5;
}

id __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke_58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 domain];
  v5 = [v3 _secureURLWithDomain:v4];
  v6 = [MEMORY[0x277D49B30] defaultContext];
  v7 = [v3 _savedAccountsWithPasswordsForURL:v5 inContext:v6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke_2_60;
  v10[3] = &unk_279B612A0;
  v11 = *(a1 + 40);
  v8 = [v7 safari_filterObjectsUsingBlock:v10];

  return v8;
}

uint64_t __114__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesWithAppIdentifier_website_usernameHint_fieldClassification___block_invoke_2_60(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) length])
  {
    v4 = [v3 first];
    v5 = [v4 user];
    v6 = [v5 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs:(id)a3 fieldClassification:(int64_t)a4
{
  v6 = MEMORY[0x277D49B30];
  v7 = a3;
  v8 = [v6 defaultContext];
  v9 = [(SFAppAutoFillOneTimeCodeProvider *)self currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs:v7 fieldClassification:a4 inContext:v8];

  return v9;
}

- (id)currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs:(id)a3 fieldClassification:(int64_t)a4 inContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB18] array];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __119__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs_fieldClassification_inContext___block_invoke;
  block[3] = &unk_279B61340;
  block[4] = self;
  v18 = v8;
  v20 = v9;
  v21 = a4;
  v19 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_sync(internalQueue, block);
  v15 = [v13 copy];

  return v15;
}

void __119__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs_fieldClassification_inContext___block_invoke(uint64_t a1)
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __119__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs_fieldClassification_inContext___block_invoke_2;
  activity_block[3] = &unk_279B61340;
  v7 = *(a1 + 32);
  v2 = *(&v7 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v11 = *(a1 + 64);
  v5 = v4;
  *&v6 = v3;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  _os_activity_initiate(&dword_26450F000, "Retrieving Current One-Time Codes for Web Browser App", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __119__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs_fieldClassification_inContext___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _validateCurrentOneTimeCodes];
  v2 = *(*(a1 + 32) + 16);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __119__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs_fieldClassification_inContext___block_invoke_3;
  v13[3] = &unk_279B61318;
  v14 = *(a1 + 40);
  v3 = [v2 safari_mapAndFilterKeysAndObjectsUsingBlock:v13];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) _orderedCodesFromOneTimeCodesAndDomainBindingResultsBySource:v3];
  [v4 addObjectsFromArray:v5];

  v6 = +[SFAutoFillFeatureManager sharedFeatureManager];
  LODWORD(v5) = [v6 shouldAutoFillPasswordsFromKeychain];

  if (v5)
  {
    if (*(a1 + 64))
    {
      v7 = [*(a1 + 40) lastObject];
      if (v7)
      {
        v8 = v7;
        v9 = *(a1 + 32);
        v10 = *(a1 + 48);
        v11 = [v9 _savedAccountsWithPasswordsForURL:v7 inContext:*(a1 + 56)];
        v12 = [v9 _sortedOneTimeCodesFromSavedAccounts:v11 context:*(a1 + 56)];
        [v10 addObjectsFromArray:v12];
      }
    }
  }
}

id __119__SFAppAutoFillOneTimeCodeProvider_currentOneTimeCodesForWebBrowserWithWebsiteFrameURLs_fieldClassification_inContext___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 matchBoundDomainsWithFrameURLs:*(a1 + 32)];
  v6 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = &stru_2875FD420;
    v8 = *(a1 + 32);
    v13 = 138412803;
    if (!v5)
    {
      v7 = @"NOT ";
    }

    v14 = v7;
    v15 = 2160;
    v16 = 1752392040;
    v17 = 2117;
    v18 = v8;
    _os_log_impl(&dword_26450F000, v6, OS_LOG_TYPE_DEFAULT, "Domain-bound verification code is %@valid for frame URLs from web browser: %{sensitive, mask.hash}@", &v13, 0x20u);
  }

  if (v5)
  {
    v9 = objc_alloc(MEMORY[0x277D49A80]);
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    v5 = [v9 initWithFirst:v4 second:v10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_orderedCodesFromOneTimeCodesAndDomainBindingResultsBySource:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 objectForKeyedSubscript:&unk_2876020D0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 first];
    [v4 addObject:v7];
  }

  v8 = [v3 objectForKeyedSubscript:&unk_2876020E8];

  if (v8)
  {
    v9 = [v8 first];
    [v4 addObject:v9];
  }

  v10 = [v3 objectForKeyedSubscript:&unk_287602100];

  if (v10)
  {
    v11 = [v10 first];
    [v4 addObject:v11];
  }

  [v4 sortUsingComparator:&__block_literal_global_0];
  v12 = [v4 copy];

  return v12;
}

uint64_t __97__SFAppAutoFillOneTimeCodeProvider__orderedCodesFromOneTimeCodesAndDomainBindingResultsBySource___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 timestamp];
  v6 = [v4 timestamp];

  v7 = [v5 compare:v6];
  return v7;
}

- (int64_t)_domainBindingForRecievedOneTimeCode:(id)a3 forAppWithIdentifier:(id)a4 websiteURL:(id)a5 hasDomainBinding:(BOOL *)a6
{
  v48 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [v12 domain];
  v14 = [v12 machineReadableCode];

  if (v13 | v14)
  {
    if (a6)
    {
      *a6 = 1;
    }

    v15 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558275;
      v41 = 1752392040;
      v42 = 2117;
      v43 = v13;
      _os_log_impl(&dword_26450F000, v15, OS_LOG_TYPE_DEFAULT, "Current verification code is domain-bound to %{sensitive, mask.hash}@.", buf, 0x16u);
    }

    if ([v10 length])
    {
      v16 = [(SFAppAutoFillOneTimeCodeProvider *)self _secureURLWithDomain:v13];
      if (v11 && [(SFAppAutoFillOneTimeCodeProvider *)self _appWithAppIdentifierIsWebBrowser:v10])
      {
        v17 = WBS_LOG_CHANNEL_PREFIXAutoFill();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 141558787;
          v41 = 1752392040;
          v42 = 2117;
          v43 = v10;
          v44 = 2160;
          v45 = 1752392040;
          v46 = 2117;
          v47 = v11;
          _os_log_impl(&dword_26450F000, v17, OS_LOG_TYPE_INFO, "App %{sensitive, mask.hash}@ has web browser entitlement. Checking domain against website URL %{sensitive, mask.hash}@.", buf, 0x2Au);
        }

        v18 = [(SFAppAutoFillOneTimeCodeProvider *)self _url:v11 matchesURLFromOriginBoundCode:v16];
      }

      else
      {
        v19 = WBS_LOG_CHANNEL_PREFIXAutoFill();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 141558275;
          v41 = 1752392040;
          v42 = 2117;
          v43 = v10;
          _os_log_impl(&dword_26450F000, v19, OS_LOG_TYPE_INFO, "Checking domain against associated domains for app %{sensitive, mask.hash}@.", buf, 0x16u);
        }

        v20 = [(SFAppAutoFillOneTimeCodeProvider *)self _associatedDomainEntriesForAppWithIdentifier:v10];
        v34 = MEMORY[0x277D85DD0];
        v35 = 3221225472;
        v36 = __122__SFAppAutoFillOneTimeCodeProvider__domainBindingForRecievedOneTimeCode_forAppWithIdentifier_websiteURL_hasDomainBinding___block_invoke;
        v37 = &unk_279B61388;
        v38 = self;
        v39 = v16;
        v21 = [v20 safari_reduceObjectsWithInitialValue:&unk_2876020D0 usingBlock:&v34];
        v18 = [v21 integerValue];
      }

      v22 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = &stru_2875FD420;
        *buf = 138412803;
        if (!v18)
        {
          v23 = @"NOT ";
        }

        v41 = v23;
        v42 = 2160;
        v43 = 1752392040;
        v44 = 2117;
        v45 = v10;
        _os_log_impl(&dword_26450F000, v22, OS_LOG_TYPE_DEFAULT, "Domain-bound verification code is %@valid for app %{sensitive, mask.hash}@.", buf, 0x20u);
      }
    }

    else
    {
      v24 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(SFAppAutoFillOneTimeCodeProvider *)v24 _domainBindingForRecievedOneTimeCode:v25 forAppWithIdentifier:v26 websiteURL:v27 hasDomainBinding:v28, v29, v30, v31];
      }

      v18 = 0;
    }
  }

  else
  {
    if (a6)
    {
      *a6 = 0;
    }

    v18 = 2;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v18;
}

id __122__SFAppAutoFillOneTimeCodeProvider__domainBindingForRecievedOneTimeCode_forAppWithIdentifier_websiteURL_hasDomainBinding___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [a2 domain];
  v8 = [v6 _secureURLWithDomain:v7];
  v9 = [v6 _url:v8 matchesURLFromOriginBoundCode:*(a1 + 40)];

  if (v9 <= [v5 integerValue])
  {
    v10 = v5;
  }

  else
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  }

  v11 = v10;

  return v11;
}

- (void)consumeCurrentOneTimeCode
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SFAppAutoFillOneTimeCodeProvider_consumeCurrentOneTimeCode__block_invoke;
  block[3] = &unk_279B613D8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __61__SFAppAutoFillOneTimeCodeProvider_consumeCurrentOneTimeCode__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__SFAppAutoFillOneTimeCodeProvider_consumeCurrentOneTimeCode__block_invoke_2;
  v4[3] = &unk_279B613B0;
  v4[4] = v1;
  return [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)consumeMessagesOneTimeCodeWithGUID:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SFAppAutoFillOneTimeCodeProvider_consumeMessagesOneTimeCodeWithGUID___block_invoke;
  v7[3] = &unk_279B611D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __71__SFAppAutoFillOneTimeCodeProvider_consumeMessagesOneTimeCodeWithGUID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:&unk_2876020D0];
  if (v2)
  {
    v5 = v2;
    v3 = [v2 GUID];
    v4 = [v3 isEqualToString:*(a1 + 40)];

    v2 = v5;
    if (v4)
    {
      [*(a1 + 32) _consumeOneTimeCode:v5];
      v2 = v5;
    }
  }
}

- (void)consumeOneTimeCode:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SFAppAutoFillOneTimeCodeProvider_consumeOneTimeCode___block_invoke;
  v7[3] = &unk_279B611D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)_consumeOneTimeCode:(id)a3
{
  v12 = a3;
  v4 = [(NSMutableDictionary *)self->_currentReceivedOneTimeCodesBySource allValues];
  v5 = [v4 containsObject:v12];

  if (v5)
  {
    v6 = [v12 source];
    if (v6 == 2)
    {
      v10 = &unk_287602100;
      v11 = [(NSMutableDictionary *)self->_currentReceivedOneTimeCodesBySource objectForKeyedSubscript:&unk_287602100];
      if (![v12 isEqual:v11])
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (v6 == 1)
      {
        -[EMOneTimeCodeAccelerator didFillOneTimeCode:](self->_mailOneTimeCodeAccelerator, "didFillOneTimeCode:", [v12 messageID]);
        currentReceivedOneTimeCodesBySource = self->_currentReceivedOneTimeCodesBySource;
        v10 = &unk_2876020E8;
      }

      else
      {
        if (v6)
        {
          goto LABEL_10;
        }

        messagesOneTimeCodeAccelerator = self->_messagesOneTimeCodeAccelerator;
        v8 = [v12 GUID];
        [(IMOneTimeCodeAccelerator *)messagesOneTimeCodeAccelerator consumeCodeWithGuid:v8];

        currentReceivedOneTimeCodesBySource = self->_currentReceivedOneTimeCodesBySource;
        v10 = &unk_2876020D0;
      }

      v11 = [(NSMutableDictionary *)currentReceivedOneTimeCodesBySource objectForKeyedSubscript:v10];
      if (([v12 isEqual:v11] & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    [(NSMutableDictionary *)self->_currentReceivedOneTimeCodesBySource setObject:0 forKeyedSubscript:v10];
LABEL_9:
  }

LABEL_10:

  MEMORY[0x2821F96F8]();
}

- (id)_mostRecentlyReceivedOneTimeCode
{
  v2 = [(NSMutableDictionary *)self->_currentReceivedOneTimeCodesBySource allValues];
  v3 = [v2 safari_reduceObjectsUsingBlock:&__block_literal_global_81];

  return v3;
}

id __68__SFAppAutoFillOneTimeCodeProvider__mostRecentlyReceivedOneTimeCode__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = v4;
  if (a3)
  {
    v6 = a3;
    v7 = [v5 timestamp];
    v8 = [v6 timestamp];
    if ([v7 safari_isLaterThanDate:v8])
    {
      v9 = v5;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  return v10;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SFAppAutoFillOneTimeCodeProvider_addObserver___block_invoke;
  v7[3] = &unk_279B611D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

uint64_t __48__SFAppAutoFillOneTimeCodeProvider_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(*(a1 + 32) + 48);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)addObserver:(id)a3 forOneTimeCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v7 source] == 3)
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__SFAppAutoFillOneTimeCodeProvider_addObserver_forOneTimeCode___block_invoke;
    block[3] = &unk_279B61420;
    block[4] = self;
    v10 = v7;
    v11 = v6;
    dispatch_async(internalQueue, block);
  }
}

void __63__SFAppAutoFillOneTimeCodeProvider_addObserver_forOneTimeCode___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 56))
  {
    v2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = v2;
  }

  v8 = objc_alloc_init(TOTPGeneratorSnapshot);
  [(TOTPGeneratorSnapshot *)v8 setOneTimeCode:*(a1 + 40)];
  v5 = [*(a1 + 40) totpGenerator];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 startDateOfIntervalContainingDate:v6];
  [(TOTPGeneratorSnapshot *)v8 setStartDateOfInterval:v7];

  [*(*(a1 + 32) + 56) setObject:v8 forKey:*(a1 + 48)];
  [*(a1 + 32) _startGeneratorTimer];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SFAppAutoFillOneTimeCodeProvider_removeObserver___block_invoke;
  v7[3] = &unk_279B611D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)removeObserverForOneTimeCode:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__SFAppAutoFillOneTimeCodeProvider_removeObserverForOneTimeCode___block_invoke;
  v7[3] = &unk_279B611D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

uint64_t __65__SFAppAutoFillOneTimeCodeProvider_removeObserverForOneTimeCode___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) removeObjectForKey:*(a1 + 40)];
  result = [*(*(a1 + 32) + 56) count];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _stopGeneratorTimer];
  }

  return result;
}

- (BOOL)isOneTimeCodeAutoDeletionEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__SFAppAutoFillOneTimeCodeProvider_isOneTimeCodeAutoDeletionEnabled__block_invoke;
  v5[3] = &unk_279B61448;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_fetchOneTimeCodeAutoDeletionPreference
{
  messagesOneTimeCodeAccelerator = self->_messagesOneTimeCodeAccelerator;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __75__SFAppAutoFillOneTimeCodeProvider__fetchOneTimeCodeAutoDeletionPreference__block_invoke;
  v3[3] = &unk_279B61498;
  v3[4] = self;
  [(IMOneTimeCodeAccelerator *)messagesOneTimeCodeAccelerator fetchAutoDeletionPreferenceWithCompletionHandler:v3];
}

void __75__SFAppAutoFillOneTimeCodeProvider__fetchOneTimeCodeAutoDeletionPreference__block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__SFAppAutoFillOneTimeCodeProvider__fetchOneTimeCodeAutoDeletionPreference__block_invoke_2;
  v4[3] = &unk_279B61470;
  v4[4] = v2;
  v5 = a2;
  dispatch_async(v3, v4);
}

- (void)_notifyOneTimeCodeObserver
{
  v3 = [(NSHashTable *)self->_observers copy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SFAppAutoFillOneTimeCodeProvider__notifyOneTimeCodeObserver__block_invoke;
  v5[3] = &unk_279B611D8;
  v6 = v3;
  v7 = self;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __62__SFAppAutoFillOneTimeCodeProvider__notifyOneTimeCodeObserver__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v13;
    *&v4 = 138412290;
    v11 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = WBS_LOG_CHANNEL_PREFIXAutoFill();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = v11;
            v17 = v8;
            _os_log_impl(&dword_26450F000, v9, OS_LOG_TYPE_INFO, "Notifying observer %@ of new one-time code", buf, 0xCu);
          }

          [v8 oneTimeCodeProviderReceivedCode:{*(a1 + 40), v11, v12}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_processOneTimeCodeFromMessages:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a3;
    v5 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [0 code];
      v10 = 141558275;
      v11 = 1752392040;
      v12 = 2117;
      v13 = v7;
      _os_log_impl(&dword_26450F000, v6, OS_LOG_TYPE_DEFAULT, "Received verification code from Messages: %{sensitive, mask.hash}@", &v10, 0x16u);
    }

    v8 = [[SFAutoFillOneTimeCode alloc] initWithIMCoreDictionary:v4];
  }

  else
  {
    v8 = 0;
  }

  [(SFAppAutoFillOneTimeCodeProvider *)self _processReceivedOneTimeCode:v8 fromSource:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_processOneTimeCodeFromMail:(id)a3 withTimestamp:(id)a4 andMessageID:(int64_t)a5
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v8 = a4;
    v9 = a3;
    v10 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [0 code];
      v15 = 141558531;
      v16 = 1752392040;
      v17 = 2117;
      v18 = v12;
      v19 = 2048;
      v20 = [0 messageID];
      _os_log_impl(&dword_26450F000, v11, OS_LOG_TYPE_DEFAULT, "Received verification code from Mail: %{sensitive, mask.hash}@ and MessageID: %ld", &v15, 0x20u);
    }

    v13 = [[SFAutoFillOneTimeCode alloc] initWithMailOneTimeCode:v9 timestamp:v8 messageID:a5];
  }

  else
  {
    v13 = 0;
  }

  [(SFAppAutoFillOneTimeCodeProvider *)self _processReceivedOneTimeCode:v13 fromSource:1];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_processReceivedOneTimeCode:(id)a3 fromSource:(int64_t)a4
{
  currentReceivedOneTimeCodesBySource = self->_currentReceivedOneTimeCodesBySource;
  v7 = MEMORY[0x277CCABB0];
  v8 = a3;
  v9 = [v7 numberWithInteger:a4];
  v10 = [(NSMutableDictionary *)currentReceivedOneTimeCodesBySource objectForKeyedSubscript:v9];
  v11 = WBSIsEqual();

  v12 = self->_currentReceivedOneTimeCodesBySource;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [(NSMutableDictionary *)v12 setObject:v8 forKeyedSubscript:v13];

  if ((v11 & 1) == 0)
  {

    [(SFAppAutoFillOneTimeCodeProvider *)self _notifyOneTimeCodeObserver];
  }
}

- (void)_validateCurrentOneTimeCodes
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v3 dateByAddingTimeInterval:-180.0];

  currentReceivedOneTimeCodesBySource = self->_currentReceivedOneTimeCodesBySource;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__SFAppAutoFillOneTimeCodeProvider__validateCurrentOneTimeCodes__block_invoke;
  v10[3] = &unk_279B614C0;
  v11 = v4;
  v6 = v4;
  v7 = [(NSMutableDictionary *)currentReceivedOneTimeCodesBySource safari_mapAndFilterKeysAndObjectsUsingBlock:v10];
  v8 = [v7 mutableCopy];
  v9 = self->_currentReceivedOneTimeCodesBySource;
  self->_currentReceivedOneTimeCodesBySource = v8;
}

id __64__SFAppAutoFillOneTimeCodeProvider__validateCurrentOneTimeCodes__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 timestamp];
  LODWORD(a1) = [v5 safari_isEarlierThanDate:*(a1 + 32)];

  if (a1)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 141558275;
      v11 = 1752392040;
      v12 = 2117;
      v13 = v4;
      _os_log_impl(&dword_26450F000, v6, OS_LOG_TYPE_INFO, "%{sensitive, mask.hash}@ is expired; removing from cache", &v10, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (int64_t)_url:(id)a3 matchesURLFromOriginBoundCode:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 safari_hasSameOriginAsURL:v6])
  {
    v7 = 2;
  }

  else
  {
    v7 = [v5 safari_hasSameSiteAsURL:v6];
  }

  return v7;
}

- (BOOL)_appWithAppIdentifierIsWebBrowser:(id)a3
{
  v3 = a3;
  v11 = 0;
  v4 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:v3 error:&v11];
  v5 = v11;
  if (v4)
  {
    v6 = [v4 entitlements];
    v7 = [v6 objectForKey:@"com.apple.developer.web-browser" ofClass:objc_opt_class()];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SFAppAutoFillOneTimeCodeProvider *)v3 _appWithAppIdentifierIsWebBrowser:v9];
    }

    v8 = 0;
  }

  return v8;
}

- (id)_secureURLWithDomain:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCACE0];
    v4 = a3;
    v5 = objc_alloc_init(v3);
    [v5 setScheme:@"https"];
    [v5 setHost:v4];

    v6 = [v5 URL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_savedAccountsWithPasswordsForURL:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277D49B40]);
  v9 = [MEMORY[0x277D49B70] queryThatMatchesEverything];
  v10 = [v8 initWithURL:v6 options:19 userNameQuery:v9 associatedDomainsManager:self->_associatedDomainsManager webFrameIdentifier:0];

  [v10 setContext:v7];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v11 = [MEMORY[0x277D49B58] sharedStore];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__SFAppAutoFillOneTimeCodeProvider__savedAccountsWithPasswordsForURL_inContext___block_invoke;
  v18[3] = &unk_279B614E8;
  v18[4] = &v19;
  [v11 getSavedAccountsMatchingCriteria:v10 withSynchronousCompletionHandler:v18];

  v12 = [v20[5] matchesForPasswordAutoFill];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__SFAppAutoFillOneTimeCodeProvider__savedAccountsWithPasswordsForURL_inContext___block_invoke_2;
  v16[3] = &unk_279B61510;
  v13 = v6;
  v17 = v13;
  v14 = [v12 safari_mapObjectsUsingBlock:v16];

  _Block_object_dispose(&v19, 8);

  return v14;
}

id __80__SFAppAutoFillOneTimeCodeProvider__savedAccountsWithPasswordsForURL_inContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D49A80];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 savedAccount];

  v7 = [v5 initWithFirst:v6 second:*(a1 + 32)];

  return v7;
}

- (id)_sortedOneTimeCodesFromSavedAccounts:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CBEB58];
  v7 = a3;
  v8 = [v6 set];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__SFAppAutoFillOneTimeCodeProvider__sortedOneTimeCodesFromSavedAccounts_context___block_invoke;
  v14[3] = &unk_279B61560;
  v15 = v5;
  v9 = v5;
  v10 = [v7 safari_reduceObjectsWithInitialValue:v8 usingBlock:v14];

  v11 = [v10 allObjects];
  v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_111];

  return v12;
}

id __81__SFAppAutoFillOneTimeCodeProvider__sortedOneTimeCodesFromSavedAccounts_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 first];
  v8 = MEMORY[0x277CBEB98];
  v9 = [v7 totpGenerators];
  v10 = [v8 setWithArray:v9];

  v11 = [v6 second];

  v12 = [v11 host];
  v13 = [v7 lastUsedDateForSite:v12 inContext:*(a1 + 32)];

  v14 = [v10 allObjects];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __81__SFAppAutoFillOneTimeCodeProvider__sortedOneTimeCodesFromSavedAccounts_context___block_invoke_2;
  v22 = &unk_279B61538;
  v23 = v7;
  v24 = v13;
  v15 = v13;
  v16 = v7;
  v17 = [v14 safari_mapObjectsUsingBlock:&v19];
  [v5 addObjectsFromArray:{v17, v19, v20, v21, v22}];

  return v5;
}

SFAutoFillOneTimeCode *__81__SFAppAutoFillOneTimeCodeProvider__sortedOneTimeCodesFromSavedAccounts_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SFAutoFillOneTimeCode alloc];
  v5 = [*(a1 + 32) user];
  v6 = [*(a1 + 32) userVisibleDomain];
  v7 = [(SFAutoFillOneTimeCode *)v4 initWithTOTPGenerator:v3 user:v5 highLevelDomain:v6 lastUsedDateOfAssociatedSavedAccount:*(a1 + 40)];

  return v7;
}

uint64_t __81__SFAppAutoFillOneTimeCodeProvider__sortedOneTimeCodesFromSavedAccounts_context___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 lastUseDateOfAssociatedSavedAccount];
  v7 = [v5 lastUseDateOfAssociatedSavedAccount];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v6 compare:v7];
    v10 = 1;
    if (v9 != -1)
    {
      v10 = -1;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = -1;
    }
  }

  else
  {
    if (v6)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    if (!(v6 | v7))
    {
      v12 = [v4 domain];
      v13 = [v5 domain];
      v11 = compareStringToString(v12, v13);

      if (!v11)
      {
        v14 = [v4 user];
        v15 = [v5 user];
        v11 = compareStringToString(v14, v15);

        if (!v11)
        {
          v16 = [v4 displayCode];
          v17 = [v5 displayCode];
          v11 = compareStringToString(v16, v17);
        }
      }
    }
  }

  return v11;
}

- (id)_associatedDomainEntriesForAppWithIdentifier:(id)a3
{
  v3 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__SFAppAutoFillOneTimeCodeProvider__associatedDomainEntriesForAppWithIdentifier___block_invoke;
  v17[3] = &unk_279B61588;
  v19 = &v20;
  v5 = v4;
  v18 = v5;
  [SFSafariCredentialStore getApprovedSharedWebCredentialsEntriesForAppWithAppID:v3 completionHandler:v17];
  v6 = dispatch_time(0, 5);
  if (dispatch_group_wait(v5, v6))
  {
    v7 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SFAppAutoFillOneTimeCodeProvider *)v7 _associatedDomainEntriesForAppWithIdentifier:v8, v9, v10, v11, v12, v13, v14];
    }

    v15 = 0;
  }

  else
  {
    v15 = v21[5];
  }

  _Block_object_dispose(&v20, 8);

  return v15;
}

void __81__SFAppAutoFillOneTimeCodeProvider__associatedDomainEntriesForAppWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (void)_startGeneratorTimer
{
  dispatch_assert_queue_V2(self->_internalQueue);
  if (!self->_generatorTimer)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__SFAppAutoFillOneTimeCodeProvider__startGeneratorTimer__block_invoke;
    v6[3] = &unk_279B615B0;
    v6[4] = self;
    v3 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:1 repeats:v6 block:1.0];
    generatorTimer = self->_generatorTimer;
    self->_generatorTimer = v3;

    [(NSTimer *)self->_generatorTimer setTolerance:0.25];
    v5 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v5 addTimer:self->_generatorTimer forMode:*MEMORY[0x277CBE640]];
  }
}

void __56__SFAppAutoFillOneTimeCodeProvider__startGeneratorTimer__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SFAppAutoFillOneTimeCodeProvider__startGeneratorTimer__block_invoke_2;
  block[3] = &unk_279B613D8;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __56__SFAppAutoFillOneTimeCodeProvider__startGeneratorTimer__block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(*(a1 + 32) + 56) keyEnumerator];
  v1 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v18;
    do
    {
      v4 = 0;
      do
      {
        if (*v18 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v17 + 1) + 8 * v4);
        if (objc_opt_respondsToSelector())
        {
          v6 = [*(*(a1 + 32) + 56) objectForKey:v5];
          v7 = [v6 oneTimeCode];
          v8 = [v7 totpGenerator];
          v9 = [MEMORY[0x277CBEAA8] date];
          v10 = [v8 startDateOfIntervalContainingDate:v9];

          v11 = [v6 startDateOfInterval];
          LOBYTE(v8) = [v10 isEqualToDate:v11];

          if ((v8 & 1) == 0)
          {
            [v6 setStartDateOfInterval:v10];
            v12 = *(a1 + 32);
            v13 = [v6 oneTimeCode];
            [v5 oneTimeCodeProvider:v12 didUpdateOneTimeCode:v13];
          }
        }

        ++v4;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v2);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_stopGeneratorTimer
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_26450F000, v3, OS_LOG_TYPE_INFO, "Stopping generator observer timer.", v5, 2u);
  }

  [(NSTimer *)self->_generatorTimer invalidate];
  generatorTimer = self->_generatorTimer;
  self->_generatorTimer = 0;
}

- (void)oneTimeCodeClient:(id)a3 detectedOneTimeCodes:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [a4 allObjects];
  v6 = [v5 sortedArrayUsingSelector:sel_timestamp];
  v7 = [v6 firstObject];

  v8 = [v7 applicationIdentifier];
  if ([v8 length])
  {
    v9 = [v7 code];
    if (![v9 length])
    {
      v12 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v30 = v8;
        _os_log_impl(&dword_26450F000, v12, OS_LOG_TYPE_INFO, "Ignoring OTC from notification from %{private}@ because code string was nil or empty.", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [v7 displayCode];
    }

    else
    {
      v10 = v9;
    }

    v13 = v10;
    if ([v10 length])
    {
      if (([v8 isEqualToString:@"com.apple.MobileSMS"] & 1) == 0 && !objc_msgSend(v8, "isEqualToString:", @"com.apple.mail"))
      {
        v28 = 0;
        v16 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:v8 error:&v28];
        v17 = v28;
        if (v16)
        {
          internalQueue = self->_internalQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __75__SFAppAutoFillOneTimeCodeProvider_oneTimeCodeClient_detectedOneTimeCodes___block_invoke;
          block[3] = &unk_279B615D8;
          v22 = v9;
          v23 = v13;
          v24 = v7;
          v25 = v16;
          v26 = v8;
          v27 = self;
          dispatch_async(internalQueue, block);
        }

        else
        {
          v19 = WBS_LOG_CHANNEL_PREFIXAutoFill();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [(SFAppAutoFillOneTimeCodeProvider *)v8 oneTimeCodeClient:v19 detectedOneTimeCodes:v17];
          }
        }

        goto LABEL_23;
      }

      v14 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v30 = v8;
        v15 = "Ignoring OTC from notification from %{private}@ because it's already covered by other support.";
LABEL_17:
        _os_log_impl(&dword_26450F000, v14, OS_LOG_TYPE_INFO, v15, buf, 0xCu);
      }
    }

    else
    {
      v14 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v30 = v8;
        v15 = "Ignoring OTC from notification from %{private}@ because displayCode string was nil or empty.";
        goto LABEL_17;
      }
    }

LABEL_23:

LABEL_24:
    goto LABEL_25;
  }

  v11 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26450F000, v11, OS_LOG_TYPE_INFO, "Ignoring OTC from notification from app with nil or empty appIdentifier.", buf, 2u);
  }

LABEL_25:

  v20 = *MEMORY[0x277D85DE8];
}

void __75__SFAppAutoFillOneTimeCodeProvider_oneTimeCodeClient_detectedOneTimeCodes___block_invoke(uint64_t a1)
{
  v2 = [SFAutoFillOneTimeCode alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) timestamp];
  v6 = [*(a1 + 56) localizedName];
  v7 = [(SFAutoFillOneTimeCode *)v2 initWithNotificationOneTimeCode:v3 displayCode:v4 timestamp:v5 sourceAppName:v6 sourceAppApplicationIdentifer:*(a1 + 64)];

  [*(a1 + 72) _processReceivedOneTimeCode:v7 fromSource:2];
}

+ (BOOL)enableCodesFromNotifications
{
  v2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = [v2 objectForKey:*MEMORY[0x277D49C00]];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)test_deliverOneTimeCode:(id)a3 fromSource:(int64_t)a4
{
  v6 = a3;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SFAppAutoFillOneTimeCodeProvider_test_deliverOneTimeCode_fromSource___block_invoke;
  block[3] = &unk_279B61600;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

- (void)_appWithAppIdentifierIsWebBrowser:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 141558275;
  v4 = 1752392040;
  v5 = 2117;
  v6 = a1;
  _os_log_error_impl(&dword_26450F000, a2, OS_LOG_TYPE_ERROR, "Could not fetch application record for application identifier: %{sensitive, mask.hash}@.", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)oneTimeCodeClient:(void *)a3 detectedOneTimeCodes:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  v8 = 138478083;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_26450F000, v5, OS_LOG_TYPE_ERROR, "Ignoring OTC from notification from %{private}@ because we failed to look up an LSBundleRecord for it, with error: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end
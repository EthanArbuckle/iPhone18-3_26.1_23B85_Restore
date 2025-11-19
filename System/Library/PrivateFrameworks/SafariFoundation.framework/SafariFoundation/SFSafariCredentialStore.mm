@interface SFSafariCredentialStore
+ (BOOL)_appIsEntitledWebBrowser:(id)a3;
+ (BOOL)_savedAccount:(id)a3 isRelatedToEntryHighLevelDomains:(id)a4 andWebsiteURL:(id)a5;
+ (BOOL)isAppAutoFillAvailable;
+ (id)_bestDomainFromApprovedDomainsForWebCredentials:(id)a3 appLinks:(id)a4 otherServices:(id)a5 appID:(id)a6 appNames:(id)a7 allDomains:(id *)a8;
+ (id)_credentialProviderExtensionHelperProxy;
+ (id)_credentialsForAppID:(id)a3 matchingSharedWebCredentialsDatabaseEntries:(id)a4 websiteURL:(id)a5 savedAccounts:(id)a6;
+ (id)_credentialsForWebBrowserWithWebsiteURL:(id)a3 webFrameIdentifier:(id)a4;
+ (id)appNamesForAppID:(id)a3;
+ (id)bestDomainForAutoFillFromDomains:(id)a3 appID:(id)a4;
+ (id)textSuggestionHeaderForExternalCredential:(id)a3;
+ (id)titleForCredentialIdentity:(id)a3 formURL:(id)a4;
+ (int64_t)_scoreForDomain:(id)a3 domainsApprovedForWebCredentials:(id)a4 domainsApprovedForAppLinks:(id)a5 domainsApprovedForOtherServices:(id)a6 appNames:(id)a7;
+ (void)_approvedAndValidSharedWebCredentialsDatabaseEntriesForAppWithAppID:(id)a3 completionHandler:(id)a4;
+ (void)_approvedSharedWebCredentialsDatabaseEntriesForAppWithAppID:(id)a3 completionHandler:(id)a4;
+ (void)_fetchKeychainCredentialsIfRequiredForAppID:(id)a3 withSharedWebCredentialsDatabaseEntries:(id)a4 websiteURL:(id)a5 webFrameIdentifier:(id)a6 isEntitledWebBrowser:(BOOL)a7 testOptions:(id)a8 completion:(id)a9;
+ (void)_getAllowedActionForAppCredentialsWithAppID:(id)a3 websiteURL:(id)a4 user:(id)a5 password:(id)a6 shouldAnalyzeExistingCredentials:(BOOL)a7 completionHandler:(id)a8;
+ (void)_getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID:(id)a3 maximumNumberOfEntriesToReturn:(unint64_t)a4 completionHandler:(id)a5;
+ (void)_getBundleIDForEnabledCredentialProvidersWithCompletionHandler:(id)a3;
+ (void)_getDomainsApprovedForWebCredentials:(id *)a3 domainsApprovedForAppLinks:(id *)a4 domainsApprovedForOtherServices:(id *)a5 fromDatabaseEntries:(id)a6;
+ (void)_getExternalCredentialsForAppID:(id)a3 matchingSharedWebCredentialsDatabaseEntries:(id)a4 websiteURL:(id)a5 isEntitledWebBrowser:(BOOL)a6 hasPasskeyRequest:(BOOL)a7 completion:(id)a8;
+ (void)_sharedWebCredentialsDatabaseEntriesForAppWithAppID:(id)a3 completionHandler:(id)a4;
+ (void)_sortCredentials:(id)a3 appID:(id)a4 usingApprovedSharedWebCredentialsDatabaseEntries:(id)a5;
+ (void)bestDomainAndAllApprovedDatabaseEntriesForAppID:(id)a3 completionHandler:(id)a4;
+ (void)bestDomainForAppID:(id)a3 completionHandler:(id)a4;
+ (void)fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion:(id)a3;
+ (void)getAllCredentialsWithCompletionHandler:(id)a3;
+ (void)getAllExternalPasskeyCredentialIdentitiesWithCompletionHandler:(id)a3;
+ (void)getAllowedActionForAppCredentialsWithAppID:(id)a3 websiteURL:(id)a4 user:(id)a5 password:(id)a6 completionHandler:(id)a7;
+ (void)getCanSaveCredentialsWithAppID:(id)a3 websiteURL:(id)a4 completionHandler:(id)a5;
+ (void)getCredentialsForAppWithAppID:(id)a3 frameIdentifier:(id)a4 externallyVerifiedAndApprovedSharedWebCredentialDomains:(id)a5 websiteURL:(id)a6 testOptions:(id)a7 completionHandler:(id)a8;
+ (void)getExternalPasskeyCredentialIdentitiesForDomains:(id)a3 completionHandler:(id)a4;
+ (void)getOneTimeCodeCredentialsForAppWithAppID:(id)a3 externallyVerifiedAndApprovedSharedWebCredentialDomains:(id)a4 websiteURL:(id)a5 completionHandler:(id)a6;
@end

@implementation SFSafariCredentialStore

+ (BOOL)isAppAutoFillAvailable
{
  v2 = +[SFAutoFillFeatureManager sharedFeatureManager];
  if ([v2 shouldAutoFillPasswords])
  {
    v3 = +[SFCredentialProviderExtensionManager sharedManager];
    v4 = [v3 getEnabledExtensionsSynchronously];
    v5 = [v4 count];

    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = [v2 shouldAutoFillPasswordsFromKeychain];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)getCredentialsForAppWithAppID:(id)a3 frameIdentifier:(id)a4 externallyVerifiedAndApprovedSharedWebCredentialDomains:(id)a5 websiteURL:(id)a6 testOptions:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v33 = a8;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __170__SFSafariCredentialStore_getCredentialsForAppWithAppID_frameIdentifier_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_testOptions_completionHandler___block_invoke;
  v52[3] = &unk_279B61C38;
  v19 = v14;
  v53 = v19;
  v20 = [v16 safari_mapObjectsUsingBlock:v52];
  v21 = objc_alloc_init(MEMORY[0x277D499C8]);
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v22 = dispatch_group_create();
  dispatch_group_enter(v22);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __170__SFSafariCredentialStore_getCredentialsForAppWithAppID_frameIdentifier_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_testOptions_completionHandler___block_invoke_2;
  v45[3] = &unk_279B61C60;
  v47 = &v48;
  v23 = v22;
  v46 = v23;
  [v21 getIsPasskeyAssertionRequestRunningForWebFrameIdentifier:v15 orApplicationIdentifier:v19 completionHandler:v45];
  v24 = dispatch_time(0, 1500000000);
  if (dispatch_group_wait(v23, v24))
  {
    v25 = WBS_LOG_CHANNEL_PREFIXCredentials();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SFSafariCredentialStore getCredentialsForAppWithAppID:v25 frameIdentifier:? externallyVerifiedAndApprovedSharedWebCredentialDomains:? websiteURL:? testOptions:? completionHandler:?];
    }

    *(v49 + 24) = 0;
  }

  v26 = [a1 _appIsEntitledWebBrowser:{v19, v33}];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __170__SFSafariCredentialStore_getCredentialsForAppWithAppID_frameIdentifier_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_testOptions_completionHandler___block_invoke_6;
  v35[3] = &unk_279B61CA8;
  v27 = v20;
  v36 = v27;
  v28 = v19;
  v37 = v28;
  v43 = a1;
  v29 = v17;
  v38 = v29;
  v30 = v15;
  v44 = v26;
  v39 = v30;
  v42 = &v48;
  v31 = v18;
  v40 = v31;
  v32 = v34;
  v41 = v32;
  [a1 _approvedAndValidSharedWebCredentialsDatabaseEntriesForAppWithAppID:v28 completionHandler:v35];

  _Block_object_dispose(&v48, 8);
}

id __170__SFSafariCredentialStore_getCredentialsForAppWithAppID_frameIdentifier_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_testOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SFSharedWebCredentialsDatabaseEntry alloc] _initWithDomain:v3 appID:*(a1 + 32) service:0 isApproved:1];

  return v4;
}

void __170__SFSafariCredentialStore_getCredentialsForAppWithAppID_frameIdentifier_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_testOptions_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count] && objc_msgSend(*(a1 + 32), "count"))
  {
    v4 = [v3 mutableCopy];
    v5 = [MEMORY[0x277CBEB98] setWithArray:v3];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (([v5 containsObject:v11] & 1) == 0)
          {
            [v4 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    if ([v3 count])
    {
      v12 = v3;
    }

    else
    {
      v12 = *(a1 + 32);
    }

    v4 = v12;
  }

  if ([*(a1 + 40) isEqualToString:@"com.apple.Preferences"])
  {
    v13 = MEMORY[0x277CBEBF8];
LABEL_21:

    v4 = v13;
    goto LABEL_22;
  }

  if ([*(a1 + 40) hasPrefix:@"com.apple."])
  {
    v13 = [v4 safari_filterObjectsUsingBlock:&__block_literal_global_7];
    goto LABEL_21;
  }

LABEL_22:
  [*(a1 + 88) _getCredentialsForAppWithAppID:*(a1 + 40) approvedAndValidSharedWebCredentialsDatabaseEntries:v4 websiteURL:*(a1 + 48) webFrameIdentifier:*(a1 + 56) isEntitledWebBrowser:*(a1 + 96) hasPasskeyRequest:*(*(*(a1 + 80) + 8) + 24) testOptions:*(a1 + 64) completionHandler:{*(a1 + 72), v15}];

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)getAllCredentialsWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SFSafariCredentialStore_getAllCredentialsWithCompletionHandler___block_invoke;
  block[3] = &unk_279B61CF0;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __66__SFSafariCredentialStore_getAllCredentialsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D49B58] sharedStore];
  v3 = [v2 savedAccountsWithPasswords];
  v4 = [v3 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_20];

  (*(*(a1 + 32) + 16))();
}

SFSafariCredential *__66__SFSafariCredentialStore_getAllCredentialsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 userIsNeverSaveMarker])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 sites];
    if ([v4 count])
    {
      v5 = [v2 userVisibleDomain];
      v6 = [v5 safari_simplifiedSiteNameForCredentialLookup];

      v7 = [SFSafariCredential alloc];
      v8 = [v2 user];
      v9 = [v2 password];
      v10 = [v2 lastModifiedDate];
      v11 = [v2 customTitle];
      v12 = [v2 sharedGroupName];
      v3 = [(SFSafariCredential *)v7 initWithUser:v8 password:v9 site:v6 creationDate:v10 customTitle:v11 groupName:v12 requestedHost:0];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void __209__SFSafariCredentialStore__getCredentialsForAppWithAppID_approvedAndValidSharedWebCredentialsDatabaseEntries_websiteURL_webFrameIdentifier_isEntitledWebBrowser_hasPasskeyRequest_testOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __209__SFSafariCredentialStore__getCredentialsForAppWithAppID_approvedAndValidSharedWebCredentialsDatabaseEntries_websiteURL_webFrameIdentifier_isEntitledWebBrowser_hasPasskeyRequest_testOptions_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v7 = a2;
  v3 = a1[4];
  v4 = dispatch_time(0, 1500000000);
  dispatch_group_wait(v3, v4);
  if ([*(*(a1[6] + 8) + 40) count])
  {
    v5 = [*(*(a1[6] + 8) + 40) arrayByAddingObjectsFromArray:v7];
  }

  else
  {
    v5 = v7;
  }

  v6 = v5;
  (*(a1[5] + 16))();
}

id __64__SFSafariCredentialStore__highLevelDomainsFromDatabaseEntries___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 domain];
  v3 = [v2 safari_highLevelDomainForPasswordManager];

  return v3;
}

+ (void)_fetchKeychainCredentialsIfRequiredForAppID:(id)a3 withSharedWebCredentialsDatabaseEntries:(id)a4 websiteURL:(id)a5 webFrameIdentifier:(id)a6 isEntitledWebBrowser:(BOOL)a7 testOptions:(id)a8 completion:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  v20 = +[SFAutoFillFeatureManager sharedFeatureManager];
  v21 = [v20 shouldAutoFillPasswordsFromKeychain];

  if (v21)
  {
    if (a8)
    {
      v22 = [objc_alloc(MEMORY[0x277D49B58]) initAndPrewarmSavedAccounts:0 forTesting:1];
    }

    else
    {
      v22 = [MEMORY[0x277D49B58] sharedStore];
    }

    v23 = v22;
    v24 = dispatch_get_global_queue(21, 0);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __185__SFSafariCredentialStore__fetchKeychainCredentialsIfRequiredForAppID_withSharedWebCredentialsDatabaseEntries_websiteURL_webFrameIdentifier_isEntitledWebBrowser_testOptions_completion___block_invoke;
    v26[3] = &unk_279B61D60;
    v34 = a7;
    v27 = v17;
    v32 = v19;
    v33 = a1;
    v28 = v18;
    v29 = v15;
    v30 = v16;
    v31 = v23;
    v25 = v23;
    [v25 performTaskEnsuringAllAccountSourcesAreLoadedOnQueue:v24 task:v26];
  }

  else
  {
    (*(v19 + 2))(v19, MEMORY[0x277CBEBF8]);
  }
}

void __185__SFSafariCredentialStore__fetchKeychainCredentialsIfRequiredForAppID_withSharedWebCredentialsDatabaseEntries_websiteURL_webFrameIdentifier_isEntitledWebBrowser_testOptions_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 88) == 1 && v1)
  {
    v2 = *(a1 + 72);
    v8 = [*(a1 + 80) _credentialsForWebBrowserWithWebsiteURL:v1 webFrameIdentifier:*(a1 + 40)];
    (*(v2 + 16))(v2);
  }

  else
  {
    v4 = *(a1 + 72);
    v3 = *(a1 + 80);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = [*(a1 + 64) savedAccountsWithPasswords];
    v7 = [v3 _credentialsForAppID:v5 matchingSharedWebCredentialsDatabaseEntries:v6 websiteURL:v1 savedAccounts:?];
    (*(v4 + 16))(v4, v7);
  }
}

+ (id)_credentialsForWebBrowserWithWebsiteURL:(id)a3 webFrameIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 19;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = MEMORY[0x277CBEBF8];
  v8 = objc_alloc(MEMORY[0x277D49B40]);
  v9 = [MEMORY[0x277D49B70] queryThatMatchesEverything];
  v10 = [v8 initWithURL:v5 options:v7 userNameQuery:v9 associatedDomainsManager:0 webFrameIdentifier:v6];

  v11 = [MEMORY[0x277D49B58] sharedStore];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__SFSafariCredentialStore__credentialsForWebBrowserWithWebsiteURL_webFrameIdentifier___block_invoke;
  v15[3] = &unk_279B61DB0;
  v17 = &v18;
  v12 = v5;
  v16 = v12;
  [v11 getSavedAccountsMatchingCriteria:v10 withSynchronousCompletionHandler:v15];

  v13 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v13;
}

void __86__SFSafariCredentialStore__credentialsForWebBrowserWithWebsiteURL_webFrameIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 matchesForPasswordAutoFill];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__SFSafariCredentialStore__credentialsForWebBrowserWithWebsiteURL_webFrameIdentifier___block_invoke_2;
  v7[3] = &unk_279B61D88;
  v8 = *(a1 + 32);
  v4 = [v3 safari_mapAndFilterObjectsUsingBlock:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

SFSafariCredential *__86__SFSafariCredentialStore__credentialsForWebBrowserWithWebsiteURL_webFrameIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 savedAccount];
  if ([v3 userIsNeverSaveMarker])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 userVisibleDomain];
    v6 = [v5 safari_simplifiedSiteNameForCredentialLookup];

    v7 = [SFSafariCredential alloc];
    v8 = [v3 user];
    v9 = [v3 password];
    v10 = [v3 lastModifiedDate];
    v11 = [v3 customTitle];
    v12 = [v3 sharedGroupName];
    v13 = [*(a1 + 32) host];
    v4 = [(SFSafariCredential *)v7 initWithUser:v8 password:v9 site:v6 creationDate:v10 customTitle:v11 groupName:v12 requestedHost:v13];
  }

  return v4;
}

+ (id)_credentialsForAppID:(id)a3 matchingSharedWebCredentialsDatabaseEntries:(id)a4 websiteURL:(id)a5 savedAccounts:(id)a6
{
  v85 = *MEMORY[0x277D85DE8];
  v60 = a3;
  v10 = a4;
  v74 = a5;
  v11 = a6;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v69 = [MEMORY[0x277CCA940] set];
  v67 = objc_alloc_init(MEMORY[0x277CCAB00]);
  v71 = a1;
  v61 = v10;
  v13 = [a1 _highLevelDomainsFromDatabaseEntries:v10];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v79 objects:v84 count:16];
  v62 = v12;
  v65 = v14;
  v66 = v13;
  if (v15)
  {
    v16 = v15;
    v17 = *v80;
    v64 = *v80;
    do
    {
      v18 = 0;
      v68 = v16;
      do
      {
        if (*v80 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v79 + 1) + 8 * v18);
        if (([v19 userIsNeverSaveMarker] & 1) == 0 && objc_msgSend(v71, "_savedAccount:isRelatedToEntryHighLevelDomains:andWebsiteURL:", v19, v13, v74))
        {
          v20 = [v19 userVisibleDomain];
          v21 = [v20 safari_simplifiedSiteNameForCredentialLookup];

          v22 = [SFSafariCredential alloc];
          v72 = [v19 user];
          v23 = [v19 password];
          v24 = [v19 lastModifiedDate];
          v25 = [v19 customTitle];
          v26 = [v19 sharedGroupName];
          v27 = [v74 host];
          v28 = v27;
          v70 = v21;
          if (v27)
          {
            v29 = [(SFSafariCredential *)v22 initWithUser:v72 password:v23 site:v21 creationDate:v24 customTitle:v25 groupName:v26 requestedHost:v27];
          }

          else
          {
            v63 = [v61 firstObject];
            v30 = [v63 domain];
            v29 = [(SFSafariCredential *)v22 initWithUser:v72 password:v23 site:v21 creationDate:v24 customTitle:v25 groupName:v26 requestedHost:v30];

            v12 = v62;
          }

          v31 = [v74 host];
          v32 = [MEMORY[0x277D49B30] defaultContext];
          v33 = [v19 lastUsedDateForSite:v31 inContext:v32];
          [(SFSafariCredential *)v29 setLastUsedDate:v33];

          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v13 = v66;
          v34 = v66;
          v35 = [v34 countByEnumeratingWithState:&v75 objects:v83 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v76;
            while (2)
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v76 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                if ([v19 isDefaultCredentialForFullyQualifiedHostname:*(*(&v75 + 1) + 8 * i)])
                {
                  [(SFSafariCredential *)v29 setIsDefaultForAnAssociatedDomain:1];
                  goto LABEL_21;
                }
              }

              v36 = [v34 countByEnumeratingWithState:&v75 objects:v83 count:16];
              if (v36)
              {
                continue;
              }

              break;
            }
          }

LABEL_21:

          [v12 addObject:v29];
          v39 = usernameAndWebsiteStringFromCredential(v29);
          [v69 addObject:v39];

          [v67 setObject:v19 forKey:v29];
          v17 = v64;
          v14 = v65;
          v16 = v68;
        }

        ++v18;
      }

      while (v18 != v16);
      v16 = [v14 countByEnumeratingWithState:&v79 objects:v84 count:16];
    }

    while (v16);
  }

  v40 = [v12 count];
  if (v40)
  {
    v41 = v40;
    v42 = 0;
    v73 = v40;
    do
    {
      v43 = [v12 objectAtIndexedSubscript:v42];
      v44 = usernameAndWebsiteStringFromCredential(v43);
      v45 = [v69 countForObject:v44];

      if (v45 != 1)
      {
        v46 = [v67 objectForKey:v43];
        v47 = [v46 sites];
        v48 = [v47 firstObject];
        v49 = [v48 safari_simplifiedSiteNameForCredentialLookup];

        v50 = [SFSafariCredential alloc];
        v51 = [v43 user];
        v52 = [v43 password];
        v53 = [v46 lastModifiedDate];
        v54 = [v46 customTitle];
        v55 = [v46 sharedGroupName];
        v56 = [(SFSafariCredential *)v50 initWithUser:v51 password:v52 site:v49 creationDate:v53 customTitle:v54 groupName:v55 requestedHost:0];

        v13 = v66;
        v57 = [v43 lastUsedDate];
        [(SFSafariCredential *)v56 setLastUsedDate:v57];

        v41 = v73;
        -[SFSafariCredential setIsDefaultForAnAssociatedDomain:](v56, "setIsDefaultForAnAssociatedDomain:", [v43 isDefaultForAnAssociatedDomain]);
        [v62 replaceObjectAtIndex:v42 withObject:v56];

        v12 = v62;
      }

      ++v42;
    }

    while (v41 != v42);
  }

  [v71 _sortCredentials:v12 appID:v60 usingApprovedSharedWebCredentialsDatabaseEntries:v61];

  v58 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (void)getCanSaveCredentialsWithAppID:(id)a3 websiteURL:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__SFSafariCredentialStore_getCanSaveCredentialsWithAppID_websiteURL_completionHandler___block_invoke;
  v10[3] = &unk_279B61DD8;
  v11 = v8;
  v9 = v8;
  [a1 _getAllowedActionForAppCredentialsWithAppID:a3 websiteURL:a4 user:0 password:0 shouldAnalyzeExistingCredentials:0 completionHandler:v10];
}

+ (void)getAllowedActionForAppCredentialsWithAppID:(id)a3 websiteURL:(id)a4 user:(id)a5 password:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __113__SFSafariCredentialStore_getAllowedActionForAppCredentialsWithAppID_websiteURL_user_password_completionHandler___block_invoke;
  v14[3] = &unk_279B61DD8;
  v15 = v12;
  v13 = v12;
  [a1 _getAllowedActionForAppCredentialsWithAppID:a3 websiteURL:a4 user:a5 password:a6 shouldAnalyzeExistingCredentials:1 completionHandler:v14];
}

+ (void)_getAllowedActionForAppCredentialsWithAppID:(id)a3 websiteURL:(id)a4 user:(id)a5 password:(id)a6 shouldAnalyzeExistingCredentials:(BOOL)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if (([v14 isEqualToString:@"com.apple.Preferences"] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"0000000000.com.apple.findmy") || (+[SFAutoFillFeatureManager sharedFeatureManager](SFAutoFillFeatureManager, "sharedFeatureManager"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "shouldAutoFillPasswordsFromKeychain"), v19, (v20 & 1) == 0))
  {
LABEL_11:
    (*(v18 + 2))(v18, 0, 0, 0, 0, 0);
    goto LABEL_12;
  }

  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = WBS_LOG_CHANNEL_PREFIXCredentials();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [SFSafariCredentialStore _getAllowedActionForAppCredentialsWithAppID:v25 websiteURL:? user:? password:? shouldAnalyzeExistingCredentials:? completionHandler:?];
      }

      goto LABEL_11;
    }
  }

  v21 = dispatch_group_create();
  v22 = v21;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v46 = 0;
  if (v14)
  {
    dispatch_group_enter(v21);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __147__SFSafariCredentialStore__getAllowedActionForAppCredentialsWithAppID_websiteURL_user_password_shouldAnalyzeExistingCredentials_completionHandler___block_invoke;
    v41[3] = &unk_279B61E00;
    v42 = v22;
    v43 = v14;
    v44 = v45;
    [a1 _getBundleIDForEnabledCredentialProvidersWithCompletionHandler:v41];
  }

  dispatch_group_enter(v22);
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__1;
  v39[4] = __Block_byref_object_dispose__1;
  v40 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __147__SFSafariCredentialStore__getAllowedActionForAppCredentialsWithAppID_websiteURL_user_password_shouldAnalyzeExistingCredentials_completionHandler___block_invoke_2;
  v36[3] = &unk_279B61588;
  v38 = v39;
  v23 = v22;
  v37 = v23;
  [a1 _approvedAndValidSharedWebCredentialsDatabaseEntriesForAppWithAppID:v14 completionHandler:v36];
  v24 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __147__SFSafariCredentialStore__getAllowedActionForAppCredentialsWithAppID_websiteURL_user_password_shouldAnalyzeExistingCredentials_completionHandler___block_invoke_3;
  block[3] = &unk_279B61E28;
  v32 = v45;
  v31 = v18;
  v33 = v39;
  v35 = a7;
  v27 = v15;
  v34 = a1;
  v28 = v16;
  v29 = v17;
  v30 = v14;
  dispatch_group_notify(v23, v24, block);

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v45, 8);

LABEL_12:
}

void __147__SFSafariCredentialStore__getAllowedActionForAppCredentialsWithAppID_websiteURL_user_password_shouldAnalyzeExistingCredentials_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count] && (v4 = objc_msgSend(*(a1 + 40), "rangeOfString:", @"."), v4 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v5 = [*(a1 + 40) substringFromIndex:v4 + 1];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([v5 isEqualToString:{*(*(&v12 + 1) + 8 * i), v12}])
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    dispatch_group_leave(*(a1 + 32));
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __147__SFSafariCredentialStore__getAllowedActionForAppCredentialsWithAppID_websiteURL_user_password_shouldAnalyzeExistingCredentials_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __147__SFSafariCredentialStore__getAllowedActionForAppCredentialsWithAppID_websiteURL_user_password_shouldAnalyzeExistingCredentials_completionHandler___block_invoke_3(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v2 = *(a1 + 64);
    v3 = *(*(a1 + 64) + 16);
    v4 = *MEMORY[0x277D85DE8];

    v3();
    return;
  }

  v46 = [MEMORY[0x277CBEB18] array];
  v49 = [MEMORY[0x277CBEB58] set];
  v48 = [MEMORY[0x277CBEB58] set];
  v50 = [MEMORY[0x277CBEB58] set];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v5 = *(*(*(a1 + 80) + 8) + 40);
  v6 = [v5 countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (!v6)
  {
    v51 = 0;
    goto LABEL_26;
  }

  v7 = v6;
  v51 = 0;
  v8 = *v58;
  do
  {
    v9 = 0;
    do
    {
      if (*v58 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v57 + 1) + 8 * v9);
      v11 = [v10 domain];
      if (v11)
      {
        v12 = [v10 service];
        if (v12 <= 4)
        {
          if ((v12 - 1) < 4)
          {
            goto LABEL_13;
          }

LABEL_15:
          v14 = [v11 safari_highLevelDomainForPasswordManager];
          v15 = [*(a1 + 32) host];
          v16 = [v15 safari_highLevelDomainForPasswordManager];
          v17 = [v14 isEqualToString:v16];

          if (v17)
          {
            v18 = v11;

            v51 = v18;
          }

          goto LABEL_17;
        }

        v13 = v49;
        if (v12 != 7)
        {
          if (v12 == 6)
          {
LABEL_13:
            v13 = v50;
          }

          else
          {
            v13 = v48;
            if (v12 != 5)
            {
              goto LABEL_15;
            }
          }
        }

        [v13 addObject:v11];
        goto LABEL_15;
      }

LABEL_17:

      ++v9;
    }

    while (v7 != v9);
    v19 = [v5 countByEnumeratingWithState:&v57 objects:v62 count:16];
    v7 = v19;
  }

  while (v19);
LABEL_26:

  if (*(a1 + 96) == 1)
  {
    v20 = [MEMORY[0x277D49B58] sharedStore];
    v21 = [v20 savedAccountsWithPasswords];

    v22 = [*(a1 + 88) _highLevelDomainsFromDatabaseEntries:*(*(*(a1 + 80) + 8) + 40)];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v54;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v54 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v53 + 1) + 8 * i);
          if ([*(a1 + 88) _savedAccount:v28 isRelatedToEntryHighLevelDomains:v22 andWebsiteURL:*(a1 + 32)])
          {
            v29 = [v28 user];
            if ([v29 isEqualToString:*(a1 + 40)])
            {
              v30 = [v28 protectionSpaces];
              [v46 addObjectsFromArray:v30];
            }

            v31 = [v28 user];
            if ([v31 isEqualToString:*(a1 + 40)])
            {
              [v28 password];
              v47 = v29;
              v32 = v25;
              v33 = v26;
              v34 = v22;
              v36 = v35 = v23;
              v37 = [v36 isEqualToString:*(a1 + 48)];

              v23 = v35;
              v22 = v34;
              v26 = v33;
              v25 = v32;
              v29 = v47;

              if (v37)
              {
                v38 = v46;
                (*(*(a1 + 64) + 16))();

                goto LABEL_45;
              }
            }

            else
            {
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v25);
    }
  }

  v38 = v46;
  if ([v46 count])
  {
    (*(*(a1 + 64) + 16))();
LABEL_45:
    v39 = v51;
  }

  else
  {
    v39 = v51;
    if (*(a1 + 32))
    {
      v40 = v51;
      v41 = 0;
    }

    else
    {
      v42 = *(a1 + 88);
      v43 = *(a1 + 56);
      v44 = [v42 appNamesForAppID:v43];
      v52 = 0;
      v40 = [v42 _bestDomainFromApprovedDomainsForWebCredentials:v49 appLinks:v48 otherServices:v50 appID:v43 appNames:v44 allDomains:&v52];
      v41 = v52;
    }

    (*(*(a1 + 64) + 16))();
  }

  v45 = *MEMORY[0x277D85DE8];
}

+ (id)appNamesForAppID:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:a3 error:0];
    v4 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v5 = [v4 arrayByAddingObject:@"en"];

    v6 = MEMORY[0x277CBEB98];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__SFSafariCredentialStore_appNamesForAppID___block_invoke;
    v12[3] = &unk_279B61E50;
    v13 = v3;
    v7 = v3;
    v8 = [v5 safari_mapAndFilterObjectsUsingBlock:v12];
    v9 = [v6 setWithArray:v8];
    v10 = [v9 allObjects];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __44__SFSafariCredentialStore_appNamesForAppID___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v9 = a2;
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:&v9 count:1];
  v6 = [v2 localizedNameWithPreferredLocalizations:{v5, v9, v10}];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D499C0]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__SFSafariCredentialStore_fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion___block_invoke;
  v7[3] = &unk_279B61E78;
  v8 = v4;
  v9 = v3;
  v5 = v3;
  v6 = v4;
  [v6 fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion:v7];
}

+ (id)_bestDomainFromApprovedDomainsForWebCredentials:(id)a3 appLinks:(id)a4 otherServices:(id)a5 appID:(id)a6 appNames:(id)a7 allDomains:(id *)a8
{
  v95 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v86 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ([v12 count] || objc_msgSend(v86, "count") || objc_msgSend(v13, "count"))
  {
    v16 = [v14 rangeOfString:@"."];
    v17 = v15;
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = [v14 substringFromIndex:v16 + 1];

      v14 = v18;
    }

    v78 = [v14 lowercaseString];

    v83 = [MEMORY[0x277CBEB40] orderedSet];
    v19 = [v12 allObjects];
    v20 = [v86 allObjects];
    v21 = [v19 arrayByAddingObjectsFromArray:v20];
    v22 = [v13 allObjects];
    v23 = [v21 arrayByAddingObjectsFromArray:v22];

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    obj = v23;
    v87 = [obj countByEnumeratingWithState:&v90 objects:v94 count:16];
    if (!v87)
    {
      v84 = 0;
      v15 = v17;
      goto LABEL_57;
    }

    v24 = -1;
    v84 = 0;
    v85 = *v91;
    v25 = 0x279B60000uLL;
    v15 = v17;
    v27 = a8;
    v26 = a1;
    v70 = v12;
    v71 = v13;
    v77 = v17;
    while (1)
    {
      v28 = 0;
      do
      {
        if (*v91 != v85)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v90 + 1) + 8 * v28);
        v30 = [v26 _scoreForDomain:v29 domainsApprovedForWebCredentials:v12 domainsApprovedForAppLinks:v86 domainsApprovedForOtherServices:v13 appNames:{v15, v68}];
        v31 = v30;
        if (v30 <= v24)
        {
          if (v30 != v24)
          {
            goto LABEL_44;
          }

          v32 = v29;
          v33 = v84;
          v81 = v78;
          if (([v33 hasSuffix:v32] & 1) == 0)
          {
            if ([v32 hasSuffix:v33])
            {
              goto LABEL_43;
            }

            v76 = v24;
            v35 = v33;
            v36 = v32;
            v37 = [v36 hasPrefix:@"www."];
            v38 = [v35 hasPrefix:@"www."];
            v74 = v38;
            v39 = [v36 hasSuffix:@".com"];
            v72 = v36;

            v40 = 1;
            if (v37)
            {
              v40 = 2;
            }

            v41 = v39 == 0;
            v25 = 0x279B60000;
            if (v41)
            {
              v42 = v37;
            }

            else
            {
              v42 = v40;
            }

            v43 = [v35 hasSuffix:@".com"];
            v73 = v35;

            v24 = v76;
            v44 = 1;
            if (v38)
            {
              v44 = 2;
            }

            v41 = v43 == 0;
            v12 = v70;
            v13 = v71;
            if (v41)
            {
              v44 = v74;
            }

            v45 = v42 >= v44;
            v46 = v42 > v44;
            v26 = a1;
            if (v45)
            {
              v47 = 0;
            }

            else
            {
              v47 = -1;
            }

            if (v46)
            {
              v47 = 1;
            }

            if (v47 == -1)
            {
              goto LABEL_43;
            }

            if (v47 != 1)
            {
              v48 = [v72 safari_countOfString:@"."];
              v49 = [v73 safari_countOfString:@"."];
              v45 = v48 >= v49;
              v50 = v48 > v49;
              v13 = v71;
              if (v45)
              {
                if (v50)
                {
                  goto LABEL_43;
                }

                v51 = [v72 componentsSeparatedByString:@"."];
                v52 = [v51 reverseObjectEnumerator];
                v53 = [v52 allObjects];
                v75 = [v53 componentsJoinedByString:@"."];

                v54 = [v73 componentsSeparatedByString:@"."];
                v55 = [v54 reverseObjectEnumerator];
                v56 = [v55 allObjects];
                v69 = [v56 componentsJoinedByString:@"."];

                v25 = 0x279B60000uLL;
                v12 = v70;

                v68 = lengthOfLongestCommonSubstring(v81, v75);
                v57 = v69;
                v58 = lengthOfLongestCommonSubstring(v81, v69);
                if (v68 <= v58)
                {
                  if (v68 < v58)
                  {
                    goto LABEL_42;
                  }

                  v59 = [v72 length];
                  v46 = v59 > [v73 length];
                  v57 = v69;
                  if (!v46)
                  {
                    v60 = [v72 length];
                    v45 = v60 >= [v73 length];
                    v57 = v69;
                    if (!v45)
                    {
LABEL_42:

                      v13 = v71;
LABEL_43:

                      v15 = v77;
                      v27 = a8;
                      goto LABEL_44;
                    }

                    v68 = [v72 compare:v73];

                    v13 = v71;
                    v15 = v77;
                    v27 = a8;
                    if (v68 != -1)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_15;
                  }
                }

                v13 = v71;
              }
            }
          }

          v15 = v77;
          v27 = a8;
        }

LABEL_15:
        if (([*(v25 + 3208) domainIsProhibitedForSavingCredentials:{v29, v68}] & 1) == 0)
        {
          v34 = v29;

          [v83 insertObject:v34 atIndex:0];
          v24 = v31;
          v84 = v34;
          v26 = a1;
          goto LABEL_47;
        }

LABEL_44:
        if (v27 && ([*(v25 + 3208) domainIsProhibitedForSavingCredentials:v29] & 1) == 0)
        {
          [v83 addObject:v29];
        }

LABEL_47:
        ++v28;
      }

      while (v87 != v28);
      v61 = [obj countByEnumeratingWithState:&v90 objects:v94 count:16];
      v87 = v61;
      if (!v61)
      {
LABEL_57:

        v62 = v84;
        if (([v12 containsObject:v84] & 1) == 0)
        {
          v63 = [v84 safari_highLevelDomainForPasswordManager];

          v62 = v63;
        }

        v14 = v78;
        if (a8)
        {
          v64 = [v83 array];
          v88[0] = MEMORY[0x277D85DD0];
          v88[1] = 3221225472;
          v88[2] = __124__SFSafariCredentialStore__bestDomainFromApprovedDomainsForWebCredentials_appLinks_otherServices_appID_appNames_allDomains___block_invoke;
          v88[3] = &unk_279B61E50;
          v89 = v12;
          *a8 = [v64 safari_mapObjectsUsingBlock:v88];
        }

        v65 = [v62 safari_simplifiedSiteNameForCredentialLookup];

        goto LABEL_62;
      }
    }
  }

  v65 = 0;
  if (a8)
  {
    *a8 = 0;
  }

LABEL_62:

  v66 = *MEMORY[0x277D85DE8];

  return v65;
}

id __124__SFSafariCredentialStore__bestDomainFromApprovedDomainsForWebCredentials_appLinks_otherServices_appID_appNames_allDomains___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = v3;
  }

  else
  {
    v5 = [v3 safari_highLevelDomainForPasswordManager];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    v4 = v7;
  }

  return v4;
}

+ (void)_getDomainsApprovedForWebCredentials:(id *)a3 domainsApprovedForAppLinks:(id *)a4 domainsApprovedForOtherServices:(id *)a5 fromDatabaseEntries:(id)a6
{
  v22 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v7 = a6;
  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [MEMORY[0x277CBEB58] set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * v15);
        v17 = [v16 domain];
        if (v17)
        {
          v18 = [v16 service];
          if (v18 <= 4)
          {
            if ((v18 - 1) >= 4)
            {
              goto LABEL_11;
            }

LABEL_9:
            v19 = v10;
LABEL_10:
            [v19 addObject:v17];
            goto LABEL_11;
          }

          v19 = v8;
          if (v18 == 7)
          {
            goto LABEL_10;
          }

          if (v18 == 6)
          {
            goto LABEL_9;
          }

          v19 = v9;
          if (v18 == 5)
          {
            goto LABEL_10;
          }
        }

LABEL_11:

        ++v15;
      }

      while (v13 != v15);
      v20 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v13 = v20;
    }

    while (v20);
  }

  *a3 = [v8 copy];
  *v22 = [v9 copy];
  *a5 = [v10 copy];

  v21 = *MEMORY[0x277D85DE8];
}

+ (void)bestDomainForAppID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__SFSafariCredentialStore_bestDomainForAppID_completionHandler___block_invoke;
  v8[3] = &unk_279B61EA0;
  v9 = v6;
  v7 = v6;
  [a1 bestDomainAndAllApprovedDatabaseEntriesForAppID:a3 completionHandler:v8];
}

+ (void)bestDomainAndAllApprovedDatabaseEntriesForAppID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __93__SFSafariCredentialStore_bestDomainAndAllApprovedDatabaseEntriesForAppID_completionHandler___block_invoke;
      v9[3] = &unk_279B61EC8;
      v12 = a1;
      v10 = v6;
      v11 = v8;
      [a1 _approvedAndValidSharedWebCredentialsDatabaseEntriesForAppWithAppID:v10 completionHandler:v9];
    }

    else
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }
}

void __93__SFSafariCredentialStore_bestDomainAndAllApprovedDatabaseEntriesForAppID_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a1[6];
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v4 = a2;
  [v3 _getDomainsApprovedForWebCredentials:&v14 domainsApprovedForAppLinks:&v13 domainsApprovedForOtherServices:&v12 fromDatabaseEntries:v4];
  v5 = v14;
  v6 = v13;
  v7 = v12;
  v8 = a1[6];
  v9 = a1[4];
  v10 = [v8 appNamesForAppID:v9];
  v11 = [v8 _bestDomainFromApprovedDomainsForWebCredentials:v5 appLinks:v6 otherServices:v7 appID:v9 appNames:v10 allDomains:0];

  (*(a1[5] + 16))();
}

+ (id)bestDomainForAutoFillFromDomains:(id)a3 appID:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithArray:v8];

  v10 = [a1 appNamesForAppID:v7];
  v11 = [a1 _bestDomainFromApprovedDomainsForWebCredentials:v9 appLinks:0 otherServices:0 appID:v7 appNames:v10 allDomains:0];

  return v11;
}

+ (BOOL)_savedAccount:(id)a3 isRelatedToEntryHighLevelDomains:(id)a4 andWebsiteURL:(id)a5
{
  v36[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v30 = a4;
  v8 = a5;
  v9 = [v7 highLevelDomain];
  v36[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];

  v28 = v7;
  v11 = [v7 additionalSites];
  v12 = [v11 safari_mapObjectsUsingBlock:&__block_literal_global_56];
  v13 = [v10 arrayByAddingObjectsFromArray:v12];

  v14 = v8 == 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v13;
  v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v32;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v31 + 1) + 8 * i);
        v21 = [v30 containsObject:v20];
        if (v8)
        {
          v22 = [v8 host];
          v23 = [v22 safari_highLevelDomainForPasswordManager];
          v24 = [v20 isEqualToString:v23];

          v14 |= v24;
        }

        v17 |= v21;
      }

      v16 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v16);
    v25 = v17 & v14;
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25 & 1;
}

+ (void)_sortCredentials:(id)a3 appID:(id)a4 usingApprovedSharedWebCredentialsDatabaseEntries:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v28 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v37;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v36 + 1) + 8 * i);
        v18 = [v17 service];
        v19 = [v17 domain];
        if (v18 == 5)
        {
          v20 = v10;
        }

        else
        {
          v20 = v11;
        }

        if (v18 == 7)
        {
          v21 = v9;
        }

        else
        {
          v21 = v20;
        }

        [v21 addObject:v19];
      }

      v14 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v14);
  }

  v22 = [a1 appNamesForAppID:v28];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __99__SFSafariCredentialStore__sortCredentials_appID_usingApprovedSharedWebCredentialsDatabaseEntries___block_invoke;
  v30[3] = &unk_279B61F10;
  v34 = v22;
  v35 = a1;
  v31 = v9;
  v32 = v10;
  v33 = v11;
  v23 = v22;
  v24 = v11;
  v25 = v10;
  v26 = v9;
  [v29 sortWithOptions:16 usingComparator:v30];

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __99__SFSafariCredentialStore__sortCredentials_appID_usingApprovedSharedWebCredentialsDatabaseEntries___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[8];
  v8 = [v5 site];
  v9 = [v7 _scoreForDomain:v8 domainsApprovedForWebCredentials:a1[4] domainsApprovedForAppLinks:a1[5] domainsApprovedForOtherServices:a1[6] appNames:a1[7]];

  v10 = a1[8];
  v11 = [v6 site];
  v12 = [v10 _scoreForDomain:v11 domainsApprovedForWebCredentials:a1[4] domainsApprovedForAppLinks:a1[5] domainsApprovedForOtherServices:a1[6] appNames:a1[7]];

  if (v9 >= v12)
  {
    if (v9 <= v12)
    {
      v14 = [v5 lastUsedDate];
      v15 = [v6 lastUsedDate];
      v16 = v15;
      if (v14 && v15)
      {
        if ([v14 compare:v15] == -1)
        {
          v13 = 1;
        }

        else
        {
          v13 = -1;
        }
      }

      else
      {
        if (v14)
        {
          v13 = -1;
        }

        else
        {
          v13 = 1;
        }

        if (!(v14 | v15))
        {
          v17 = [v5 isDefaultForAnAssociatedDomain];
          v18 = [v6 isDefaultForAnAssociatedDomain];
          if ((v17 & 1) != 0 || !v18)
          {
            if (v18 & 1 | ((v17 & 1) == 0))
            {
              v27 = [v5 site];
              v19 = [v6 site];
              v20 = [v27 safari_simplifiedSiteNameForCredentialLookup];
              v21 = [v19 safari_simplifiedSiteNameForCredentialLookup];
              v28 = v20;
              v22 = numberOfDotsInString(v20);
              v23 = numberOfDotsInString(v21);
              v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
              v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
              v13 = [v24 compare:v25];

              if (!v13)
              {
                v13 = [v27 caseInsensitiveCompare:v19];
              }
            }

            else
            {
              v13 = -1;
            }
          }

          else
          {
            v13 = 1;
          }
        }
      }
    }

    else
    {
      v13 = -1;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

+ (int64_t)_scoreForDomain:(id)a3 domainsApprovedForWebCredentials:(id)a4 domainsApprovedForAppLinks:(id)a5 domainsApprovedForOtherServices:(id)a6 appNames:(id)a7
{
  v40 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if ([a4 containsObject:v11])
  {
    v15 = 6;
  }

  else
  {
    v15 = 0;
  }

  if ([v12 containsObject:v11])
  {
    v15 += 2;
  }

  v16 = v15 | [v13 containsObject:v11];
  v17 = [v11 safari_stringByRemovingTopLevelDomainFromHost];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v18 = v14;
  v19 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v18);
        }

        if ([v17 safari_isCaseInsensitiveEqualToString:*(*(&v34 + 1) + 8 * i)])
        {
          v16 += 3;
          goto LABEL_25;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = v18;
  v24 = [v23 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v31;
    while (2)
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v23);
        }

        if ([v17 safari_hasCaseInsensitiveSuffix:{*(*(&v30 + 1) + 8 * j), v30}])
        {
          v16 += 2;
          goto LABEL_25;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  v28 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (void)_getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID:(id)a3 maximumNumberOfEntriesToReturn:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __151__SFSafariCredentialStore__getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID_maximumNumberOfEntriesToReturn_completionHandler___block_invoke;
  v12[3] = &unk_279B61FB0;
  v15 = a1;
  v16 = a4;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [a1 getApprovedSharedWebCredentialsEntriesForAppWithAppID:v11 completionHandler:v12];
}

void __151__SFSafariCredentialStore__getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID_maximumNumberOfEntriesToReturn_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v38 = 0;
  v39[0] = 0;
  v37 = 0;
  v4 = a2;
  [v3 _getDomainsApprovedForWebCredentials:v39 domainsApprovedForAppLinks:&v38 domainsApprovedForOtherServices:&v37 fromDatabaseEntries:v4];
  v5 = v39[0];
  v6 = v38;
  v7 = v37;
  v8 = [*(a1 + 48) appNamesForAppID:*(a1 + 32)];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __151__SFSafariCredentialStore__getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID_maximumNumberOfEntriesToReturn_completionHandler___block_invoke_2;
  aBlock[3] = &unk_279B61F38;
  v10 = v9;
  v11 = *(a1 + 48);
  v31 = v10;
  v36 = v11;
  v12 = v5;
  v32 = v12;
  v13 = v6;
  v33 = v13;
  v14 = v7;
  v34 = v14;
  v15 = v8;
  v35 = v15;
  v16 = _Block_copy(aBlock);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __151__SFSafariCredentialStore__getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID_maximumNumberOfEntriesToReturn_completionHandler___block_invoke_3;
  v28[3] = &unk_279B61F60;
  v17 = v16;
  v29 = v17;
  v18 = [v4 sortedArrayUsingComparator:v28];

  v19 = [MEMORY[0x277CBEB58] set];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __151__SFSafariCredentialStore__getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID_maximumNumberOfEntriesToReturn_completionHandler___block_invoke_4;
  v26 = &unk_279B61F88;
  v27 = v19;
  v20 = v19;
  v21 = [v18 safari_mapAndFilterObjectsUsingBlock:&v23];

  if ([v21 count] > *(a1 + 56))
  {
    v22 = [v21 subarrayWithRange:0];

    v21 = v22;
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __151__SFSafariCredentialStore__getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID_maximumNumberOfEntriesToReturn_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = [*(a1 + 72) _scoreForDomain:v3 domainsApprovedForWebCredentials:*(a1 + 40) domainsApprovedForAppLinks:*(a1 + 48) domainsApprovedForOtherServices:*(a1 + 56) appNames:*(a1 + 64)];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v3];
  }

  return v6;
}

uint64_t __151__SFSafariCredentialStore__getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID_maximumNumberOfEntriesToReturn_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 service];
  v8 = [v6 service];
  if (v7 == v8)
  {
    v9 = *(a1 + 32);
    v10 = [v6 domain];
    v11 = (*(v9 + 16))(v9, v10);
    v12 = *(a1 + 32);
    v13 = [v5 domain];
    v14 = v11 - (*(v12 + 16))(v12, v13);
  }

  else if (v7 > v8)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

id __151__SFSafariCredentialStore__getApprovedSharedWebCredentialsEntriesSortedByHighestValueForAppWithAppID_maximumNumberOfEntriesToReturn_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  if ([*(a1 + 32) containsObject:v4])
  {
    v5 = 0;
  }

  else
  {
    [*(a1 + 32) addObject:v4];
    v5 = v3;
  }

  return v5;
}

+ (void)_approvedAndValidSharedWebCredentialsDatabaseEntriesForAppWithAppID:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v7 length])
  {
    [a1 _approvedSharedWebCredentialsDatabaseEntriesForAppWithAppID:v7 completionHandler:v6];
  }

  else
  {
    v6[2](v6, MEMORY[0x277CBEBF8]);
  }
}

+ (void)_approvedSharedWebCredentialsDatabaseEntriesForAppWithAppID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!quirksManager)
  {
    v8 = objc_alloc(MEMORY[0x277D499D8]);
    v9 = [MEMORY[0x277CCA8D8] safari_safariCoreBundle];
    v10 = [v9 URLForResource:@"WBSAutoFillQuirks" withExtension:@"plist"];
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [v11 safari_autoFillQuirksDownloadDirectoryURL];
    v13 = [v8 initWithBuiltInQuirksURL:v10 downloadsDirectoryURL:v12 resourceName:@"AutoFillQuirks" resourceVersion:@"1" updateDateDefaultsKey:*MEMORY[0x277D49D10] updateInterval:0.0];
    v14 = quirksManager;
    quirksManager = v13;

    [quirksManager setShouldAttemptToDownloadConfiguration:0];
    [quirksManager beginLoadingQuirksFromDisk];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __105__SFSafariCredentialStore__approvedSharedWebCredentialsDatabaseEntriesForAppWithAppID_completionHandler___block_invoke;
  v17[3] = &unk_279B61EC8;
  v19 = v7;
  v20 = a1;
  v18 = v6;
  v15 = v7;
  v16 = v6;
  [a1 _sharedWebCredentialsDatabaseEntriesForAppWithAppID:v16 completionHandler:v17];
}

void __105__SFSafariCredentialStore__approvedSharedWebCredentialsDatabaseEntriesForAppWithAppID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = [a2 safari_filterObjectsUsingBlock:&__block_literal_global_79];
  v4 = [v3 mutableCopy];
  if ([*(a1 + 48) _shouldUseQuirks])
  {
    v26 = v3;
    v5 = [quirksManager appToWebsiteAssociationManager];
    v6 = [v5 domainsWithAssociatedCredentialsForAppID:*(a1 + 32)];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v41;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [[SFSharedWebCredentialsDatabaseEntry alloc] _initWithDomain:*(*(&v40 + 1) + 8 * i) appID:*(a1 + 32) service:7 isApproved:1];
          [v4 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v9);
    }

    v25 = v7;

    v29 = [quirksManager associatedDomainsManager];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [v4 copy];
    v30 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v30)
    {
      v28 = *v37;
      do
      {
        v13 = 0;
        do
        {
          if (*v37 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v31 = v13;
          v14 = *(*(&v36 + 1) + 8 * v13);
          v15 = [v14 domain];
          v16 = [v29 domainsWithAssociatedCredentialsForDomain:v15];
          v17 = [v16 allObjects];

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v18 = v17;
          v19 = [v18 countByEnumeratingWithState:&v32 objects:v44 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v33;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v33 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = -[SFSharedWebCredentialsDatabaseEntry _initWithDomain:appID:service:isApproved:]([SFSharedWebCredentialsDatabaseEntry alloc], "_initWithDomain:appID:service:isApproved:", *(*(&v32 + 1) + 8 * j), *(a1 + 32), [v14 service], 1);
                [v4 addObject:v23];
              }

              v20 = [v18 countByEnumeratingWithState:&v32 objects:v44 count:16];
            }

            while (v20);
          }

          v13 = v31 + 1;
        }

        while (v31 + 1 != v30);
        v30 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v30);
    }

    v3 = v26;
  }

  (*(*(a1 + 40) + 16))();

  v24 = *MEMORY[0x277D85DE8];
}

+ (void)_sharedWebCredentialsDatabaseEntriesForAppWithAppID:(id)a3 completionHandler:(id)a4
{
  v5 = MEMORY[0x277D547B0];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithServiceType:0 applicationIdentifier:v7 domain:0];

  v13 = 0;
  v9 = [MEMORY[0x277D547A8] serviceDetailsWithServiceSpecifier:v8 error:&v13];
  v10 = v13;
  if (v10)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXCredentials();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SFSafariCredentialStore _sharedWebCredentialsDatabaseEntriesForAppWithAppID:v11 completionHandler:v10];
    }

    v6[2](v6, MEMORY[0x277CBEBF8]);
  }

  else
  {
    v12 = [v9 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_84];
    v6[2](v6, v12);

    v6 = v12;
  }
}

SFSharedWebCredentialsDatabaseEntry *__97__SFSafariCredentialStore__sharedWebCredentialsDatabaseEntriesForAppWithAppID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SFSharedWebCredentialsDatabaseEntry alloc] initWithServiceDetails:v2];

  return v3;
}

+ (BOOL)_appIsEntitledWebBrowser:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:a3 error:0];
  v4 = [v3 entitlements];
  v5 = objc_opt_self();
  v6 = [v4 objectForKey:@"com.apple.developer.web-browser" ofClass:v5];

  LOBYTE(v4) = [v6 BOOLValue];
  return v4;
}

+ (id)_credentialProviderExtensionHelperProxy
{
  v2 = objc_alloc_init(SFCredentialProviderExtensionHelperProxy);

  return v2;
}

+ (void)_getExternalCredentialsForAppID:(id)a3 matchingSharedWebCredentialsDatabaseEntries:(id)a4 websiteURL:(id)a5 isEntitledWebBrowser:(BOOL)a6 hasPasskeyRequest:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v10 = a6;
  v33[2] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  if (v16 && v10)
  {
    v18 = [v16 host];
    v19 = v18;
    if (v18)
    {
      v33[0] = v18;
      v20 = [v18 safari_highLevelDomainForPasswordManager];
      v33[1] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = [v15 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_87];
  }

  if ([v21 count])
  {
    v22 = [a1 _credentialProviderExtensionHelperProxy];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __164__SFSafariCredentialStore__getExternalCredentialsForAppID_matchingSharedWebCredentialsDatabaseEntries_websiteURL_isEntitledWebBrowser_hasPasskeyRequest_completion___block_invoke_2;
    aBlock[3] = &unk_279B62040;
    v27 = v16;
    v32 = a1;
    v28 = v14;
    v29 = v15;
    v31 = v17;
    v23 = v22;
    v30 = v23;
    v24 = _Block_copy(aBlock);
    if (v9)
    {
      [v23 fetchAllCredentialIdentitiesMatchingDomains:v21 completion:v24];
    }

    else
    {
      [v23 fetchPasswordCredentialIdentitiesMatchingDomains:v21 completion:v24];
    }
  }

  else
  {
    (*(v17 + 2))(v17, MEMORY[0x277CBEBF8]);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __164__SFSafariCredentialStore__getExternalCredentialsForAppID_matchingSharedWebCredentialsDatabaseEntries_websiteURL_isEntitledWebBrowser_hasPasskeyRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 sortedArrayUsingComparator:&__block_literal_global_90];
  v4 = [*(a1 + 32) host];
  v5 = [v4 safari_highLevelDomainForPasswordManager];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __164__SFSafariCredentialStore__getExternalCredentialsForAppID_matchingSharedWebCredentialsDatabaseEntries_websiteURL_isEntitledWebBrowser_hasPasskeyRequest_completion___block_invoke_4;
  v11[3] = &unk_279B62018;
  v12 = v5;
  v6 = v5;
  v7 = [v3 safari_mapAndFilterObjectsUsingBlock:v11];
  v8 = [v7 mutableCopy];

  [*(a1 + 72) _sortCredentials:v8 appID:*(a1 + 40) usingApprovedSharedWebCredentialsDatabaseEntries:*(a1 + 48)];
  v9 = [MEMORY[0x277CBEB70] orderedSetWithArray:v8];
  v10 = [v9 array];

  (*(*(a1 + 64) + 16))();
  [*(a1 + 56) invalidate];
}

SFSafariCredential *__164__SFSafariCredentialStore__getExternalCredentialsForAppID_matchingSharedWebCredentialsDatabaseEntries_websiteURL_isEntitledWebBrowser_hasPasskeyRequest_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5 && ([v3 site], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "safari_highLevelDomainForPasswordManager"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "safari_isCaseInsensitiveEqualToString:", v7), v7, v6, !v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = [[SFSafariCredential alloc] initWithExternalCredential:v4];
  }

  return v9;
}

+ (id)textSuggestionHeaderForExternalCredential:(id)a3
{
  v4 = [a3 externalCredential];
  v5 = [a1 titleForCredentialIdentity:v4 formURL:0];

  return v5;
}

+ (id)titleForCredentialIdentity:(id)a3 formURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[SFAutoFillFeatureManager sharedFeatureManager];
  if ([v7 shouldAutoFillPasswordsFromKeychain])
  {
    v8 = 1;
  }

  else
  {
    v9 = +[SFCredentialProviderExtensionManager sharedManager];
    v10 = [v9 getEnabledExtensionsSynchronously];
    v8 = [v10 count] > 1;
  }

  v11 = [v5 site];
  v12 = [v6 host];

  v13 = [v12 safari_isCaseInsensitiveEqualToString:v11];
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = [v5 type];
  if (v14 <= 1)
  {
    if (!v14)
    {
      goto LABEL_19;
    }

    if (v14 == 1)
    {
      if (v8)
      {
        v15 = MEMORY[0x277CCACA8];
LABEL_26:
        v19 = _WBSLocalizedString();
        v20 = [v5 owningExtensionState];
        v21 = [v20 localizedDisplayName];
        [v15 stringWithFormat:v19, v21, v23];
        goto LABEL_27;
      }

      goto LABEL_33;
    }

LABEL_14:
    v16 = [v5 type];
    switch(v16)
    {
      case 4:
        v17 = MEMORY[0x277CCACA8];
        if (v8)
        {
LABEL_23:
          v19 = _WBSLocalizedString();
          v20 = [v5 owningExtensionState];
          v21 = [v20 localizedDisplayName];
          [v17 stringWithFormat:v19, v11, v21];
          v18 = LABEL_27:;

LABEL_29:
          goto LABEL_30;
        }

LABEL_28:
        v19 = _WBSLocalizedString();
        v18 = [v17 stringWithFormat:v19, v11];
        goto LABEL_29;
      case 2:
        v17 = MEMORY[0x277CCACA8];
        if (v8)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
      case 1:
        v17 = MEMORY[0x277CCACA8];
        if (v8)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
    }

LABEL_19:
    v18 = &stru_2875FD420;
    goto LABEL_30;
  }

  if (v14 == 2)
  {
    if (v8)
    {
      v15 = MEMORY[0x277CCACA8];
      goto LABEL_26;
    }

    goto LABEL_33;
  }

  if (v14 != 4)
  {
    goto LABEL_14;
  }

  if (v8)
  {
    v15 = MEMORY[0x277CCACA8];
    goto LABEL_26;
  }

LABEL_33:
  v18 = _WBSLocalizedString();
LABEL_30:

  return v18;
}

+ (void)_getBundleIDForEnabledCredentialProvidersWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[SFCredentialProviderExtensionManager sharedManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __90__SFSafariCredentialStore__getBundleIDForEnabledCredentialProvidersWithCompletionHandler___block_invoke;
  v6[3] = &unk_279B62088;
  v7 = v3;
  v5 = v3;
  [v4 getEnabledExtensionsWithCompletion:v6];
}

void __90__SFSafariCredentialStore__getBundleIDForEnabledCredentialProvidersWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 safari_mapObjectsUsingBlock:&__block_literal_global_152];
  (*(v2 + 16))(v2, v3);
}

+ (void)getExternalPasskeyCredentialIdentitiesForDomains:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _credentialProviderExtensionHelperProxy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__SFSafariCredentialStore_getExternalPasskeyCredentialIdentitiesForDomains_completionHandler___block_invoke;
  v10[3] = &unk_279B62088;
  v11 = v6;
  v9 = v6;
  [v8 fetchPasskeyCredentialIdentitiesMatchingDomains:v7 completion:v10];
}

void __94__SFSafariCredentialStore_getExternalPasskeyCredentialIdentitiesForDomains_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sortedArrayUsingComparator:&__block_literal_global_154];
  (*(*(a1 + 32) + 16))();
}

+ (void)getAllExternalPasskeyCredentialIdentitiesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 _credentialProviderExtensionHelperProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__SFSafariCredentialStore_getAllExternalPasskeyCredentialIdentitiesWithCompletionHandler___block_invoke;
  v7[3] = &unk_279B62088;
  v8 = v4;
  v6 = v4;
  [v5 fetchAllPaskeyCredentialIdentitiesWithCompletion:v7];
}

void __90__SFSafariCredentialStore_getAllExternalPasskeyCredentialIdentitiesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sortedArrayUsingComparator:&__block_literal_global_156];
  (*(*(a1 + 32) + 16))();
}

+ (void)getOneTimeCodeCredentialsForAppWithAppID:(id)a3 externallyVerifiedAndApprovedSharedWebCredentialDomains:(id)a4 websiteURL:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [a1 _appIsEntitledWebBrowser:v13];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __153__SFSafariCredentialStore_getOneTimeCodeCredentialsForAppWithAppID_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_completionHandler___block_invoke;
  v18[3] = &unk_279B620F8;
  v19 = v10;
  v20 = v11;
  v23 = v14;
  v21 = v12;
  v22 = a1;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  [a1 _approvedAndValidSharedWebCredentialsDatabaseEntriesForAppWithAppID:v13 completionHandler:v18];
}

void __153__SFSafariCredentialStore_getOneTimeCodeCredentialsForAppWithAppID_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [a2 safari_mapObjectsUsingBlock:&__block_literal_global_158_0];
  v4 = [v3 mutableCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __153__SFSafariCredentialStore_getOneTimeCodeCredentialsForAppWithAppID_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_completionHandler___block_invoke_3;
        v16[3] = &unk_279B620B0;
        v16[4] = v10;
        if (([v4 safari_containsObjectPassingTest:v16] & 1) == 0)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  if (![v4 count])
  {
    v11 = [*(a1 + 40) host];
    v12 = [v11 safari_highLevelDomainForPasswordManager];

    if (*(a1 + 64) != 1 || !v12)
    {
      (*(*(a1 + 48) + 16))();
      goto LABEL_15;
    }

    [v4 addObject:v12];
  }

  v12 = [*(a1 + 56) _credentialProviderExtensionHelperProxy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __153__SFSafariCredentialStore_getOneTimeCodeCredentialsForAppWithAppID_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_completionHandler___block_invoke_4;
  v14[3] = &unk_279B62088;
  v15 = *(a1 + 48);
  [v12 fetchOneTimeCodeCredentialIdentitiesMatchingDomains:v4 completion:v14];

LABEL_15:
  v13 = *MEMORY[0x277D85DE8];
}

void __153__SFSafariCredentialStore_getOneTimeCodeCredentialsForAppWithAppID_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = [a2 sortedArrayUsingComparator:&__block_literal_global_161];
  v3 = *(a1 + 32);
  v4 = [v5 safari_mapObjectsUsingBlock:&__block_literal_global_163];
  (*(v3 + 16))(v3, v4);
}

SFSafariCredential *__153__SFSafariCredentialStore_getOneTimeCodeCredentialsForAppWithAppID_externallyVerifiedAndApprovedSharedWebCredentialDomains_websiteURL_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SFSafariCredential alloc] initWithExternalCredential:v2];

  return v3;
}

+ (void)_getAllowedActionForAppCredentialsWithAppID:(void *)a1 websiteURL:user:password:shouldAnalyzeExistingCredentials:completionHandler:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_0_0(&dword_26450F000, v3, v4, "Attempted to submit credential with user name that is not a string, got type: %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)_sharedWebCredentialsDatabaseEntriesForAppWithAppID:(void *)a1 completionHandler:(void *)a2 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_0(&dword_26450F000, v5, v6, "%{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

@end
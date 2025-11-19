@interface WBUGeneratedPasswordCredentialUpdater
+ (id)sharedUpdater;
- (WBUGeneratedPasswordCredentialUpdater)init;
- (void)_performRequest:(id)a3 completionHandler:(id)a4;
- (void)_saveNewAccountWithRequest:(id)a3 completionHandler:(id)a4;
- (void)_updateExistingSavedAccount:(id)a3 withNewGeneratedPassword:(id)a4 completionHandler:(id)a5;
- (void)updateCredentialWithNewUsername:(id)a3 newGeneratedPassword:(id)a4 lastGeneratedPassword:(id)a5 credentialURL:(id)a6 protectionSpace:(id)a7 savedAccountContext:(id)a8 shouldSaveNewCredential:(BOOL)a9 shouldSaveExistingCredential:(BOOL)a10 associatedDomainsManager:(id)a11 completionHandler:(id)a12;
@end

@implementation WBUGeneratedPasswordCredentialUpdater

- (WBUGeneratedPasswordCredentialUpdater)init
{
  v15.receiver = self;
  v15.super_class = WBUGeneratedPasswordCredentialUpdater;
  v2 = [(WBUGeneratedPasswordCredentialUpdater *)&v15 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"com.apple.WebUI.%@.%p", v5, v2];
    v7 = dispatch_queue_create([v6 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = [MEMORY[0x277CBEB38] dictionary];
    urlsToUpdateRequests = v2->_urlsToUpdateRequests;
    v2->_urlsToUpdateRequests = v9;

    v11 = [MEMORY[0x277CBEB58] set];
    urlsScheduledForUpdating = v2->_urlsScheduledForUpdating;
    v2->_urlsScheduledForUpdating = v11;

    v13 = v2;
  }

  return v2;
}

+ (id)sharedUpdater
{
  if (sharedUpdater_onceToken != -1)
  {
    +[WBUGeneratedPasswordCredentialUpdater sharedUpdater];
  }

  v3 = sharedUpdater_updater;

  return v3;
}

uint64_t __54__WBUGeneratedPasswordCredentialUpdater_sharedUpdater__block_invoke()
{
  sharedUpdater_updater = objc_alloc_init(WBUGeneratedPasswordCredentialUpdater);

  return MEMORY[0x2821F96F8]();
}

- (void)updateCredentialWithNewUsername:(id)a3 newGeneratedPassword:(id)a4 lastGeneratedPassword:(id)a5 credentialURL:(id)a6 protectionSpace:(id)a7 savedAccountContext:(id)a8 shouldSaveNewCredential:(BOOL)a9 shouldSaveExistingCredential:(BOOL)a10 associatedDomainsManager:(id)a11 completionHandler:(id)a12
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a11;
  v25 = a12;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __262__WBUGeneratedPasswordCredentialUpdater_updateCredentialWithNewUsername_newGeneratedPassword_lastGeneratedPassword_credentialURL_protectionSpace_savedAccountContext_shouldSaveNewCredential_shouldSaveExistingCredential_associatedDomainsManager_completionHandler___block_invoke;
  v42[3] = &unk_279EB1F60;
  v26 = v25;
  v43 = v26;
  v27 = MEMORY[0x2743DCFC0](v42);
  v28 = v27;
  if (v21 && v22 && (v18 || v19 || v20))
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __262__WBUGeneratedPasswordCredentialUpdater_updateCredentialWithNewUsername_newGeneratedPassword_lastGeneratedPassword_credentialURL_protectionSpace_savedAccountContext_shouldSaveNewCredential_shouldSaveExistingCredential_associatedDomainsManager_completionHandler___block_invoke_3;
    block[3] = &unk_279EB1FB0;
    v31 = v18;
    v32 = v19;
    v33 = v20;
    v34 = v21;
    v35 = v22;
    v36 = v23;
    v40 = a9;
    v41 = a10;
    v37 = v24;
    v38 = self;
    v39 = v28;
    dispatch_async(queue, block);
  }

  else
  {
    (*(v27 + 16))(v27, 0);
  }
}

void __262__WBUGeneratedPasswordCredentialUpdater_updateCredentialWithNewUsername_newGeneratedPassword_lastGeneratedPassword_credentialURL_protectionSpace_savedAccountContext_shouldSaveNewCredential_shouldSaveExistingCredential_associatedDomainsManager_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __262__WBUGeneratedPasswordCredentialUpdater_updateCredentialWithNewUsername_newGeneratedPassword_lastGeneratedPassword_credentialURL_protectionSpace_savedAccountContext_shouldSaveNewCredential_shouldSaveExistingCredential_associatedDomainsManager_completionHandler___block_invoke_2;
    v4[3] = &unk_279EB18A8;
    v6 = *(a1 + 32);
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

void __262__WBUGeneratedPasswordCredentialUpdater_updateCredentialWithNewUsername_newGeneratedPassword_lastGeneratedPassword_credentialURL_protectionSpace_savedAccountContext_shouldSaveNewCredential_shouldSaveExistingCredential_associatedDomainsManager_completionHandler___block_invoke_3(uint64_t a1)
{
  LOWORD(v5) = *(a1 + 104);
  v2 = [WBUGeneratedPasswordCredentialUpdateRequest requestWithNewUsername:*(a1 + 32) newGeneratedPassword:*(a1 + 40) lastGeneratedPassword:*(a1 + 48) credentialURL:*(a1 + 56) protectionSpace:*(a1 + 64) savedAccountContext:*(a1 + 72) shouldSaveNewCredential:v5 shouldSaveExistingCredential:*(a1 + 80) associatedDomainsManager:?];
  [*(*(a1 + 88) + 24) setObject:v2 forKeyedSubscript:*(a1 + 56)];
  if ([*(*(a1 + 88) + 16) containsObject:*(a1 + 56)])
  {
    (*(*(a1 + 96) + 16))();
  }

  else
  {
    [*(*(a1 + 88) + 16) addObject:*(a1 + 56)];
    v3 = *(a1 + 88);
    v4 = *(v3 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __262__WBUGeneratedPasswordCredentialUpdater_updateCredentialWithNewUsername_newGeneratedPassword_lastGeneratedPassword_credentialURL_protectionSpace_savedAccountContext_shouldSaveNewCredential_shouldSaveExistingCredential_associatedDomainsManager_completionHandler___block_invoke_4;
    block[3] = &unk_279EB17B8;
    block[4] = v3;
    v7 = *(a1 + 56);
    v8 = *(a1 + 96);
    dispatch_async(v4, block);
  }
}

void __262__WBUGeneratedPasswordCredentialUpdater_updateCredentialWithNewUsername_newGeneratedPassword_lastGeneratedPassword_credentialURL_protectionSpace_savedAccountContext_shouldSaveNewCredential_shouldSaveExistingCredential_associatedDomainsManager_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __262__WBUGeneratedPasswordCredentialUpdater_updateCredentialWithNewUsername_newGeneratedPassword_lastGeneratedPassword_credentialURL_protectionSpace_savedAccountContext_shouldSaveNewCredential_shouldSaveExistingCredential_associatedDomainsManager_completionHandler___block_invoke_5;
  v4[3] = &unk_279EB1F88;
  v4[4] = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 _performRequest:v2 completionHandler:v4];
}

void __262__WBUGeneratedPasswordCredentialUpdater_updateCredentialWithNewUsername_newGeneratedPassword_lastGeneratedPassword_credentialURL_protectionSpace_savedAccountContext_shouldSaveNewCredential_shouldSaveExistingCredential_associatedDomainsManager_completionHandler___block_invoke_5(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = *(a1[4] + 16);
  v5 = a2;
  [v4 removeObject:v3];
  [*(a1[4] + 24) removeObjectForKey:a1[5]];
  (*(a1[6] + 16))();
}

- (void)_performRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D49B58] sharedStore];
  v9 = MEMORY[0x277D49B40];
  v10 = [v6 protectionSpace];
  v11 = [v10 safari_URL];
  v12 = [v9 criteriaForExactFQDNPasswordMatchesOfURL:v11];

  v13 = objc_alloc(MEMORY[0x277D49B70]);
  v14 = [v6 username];
  v15 = [v13 initWithString:v14 matchingType:1];
  [v12 setUserNameQuery:v15];

  [v12 setOptions:{objc_msgSend(v12, "options") | 2}];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__WBUGeneratedPasswordCredentialUpdater__performRequest_completionHandler___block_invoke;
  v18[3] = &unk_279EB1FD8;
  v19 = v6;
  v20 = self;
  v21 = v7;
  v16 = v7;
  v17 = v6;
  [v8 savedAccountsMatchingCriteria:v12 withCompletionHandler:v18];
}

void __75__WBUGeneratedPasswordCredentialUpdater__performRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([*(a1 + 32) shouldSaveNewCredential] && !objc_msgSend(v9, "count"))
  {
    [*(a1 + 40) _saveNewAccountWithRequest:*(a1 + 32) completionHandler:*(a1 + 48)];
  }

  else if ([*(a1 + 32) shouldSaveExistingCredential] && objc_msgSend(v9, "count"))
  {
    v3 = *(a1 + 40);
    v4 = [v9 matchesForPasswordAutoFill];
    v5 = [v4 firstObject];
    v6 = [v5 savedAccount];
    v7 = [*(a1 + 32) generatedPassword];
    [v3 _updateExistingSavedAccount:v6 withNewGeneratedPassword:v7 completionHandler:*(a1 + 48)];
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, 0);
    }
  }
}

- (void)_saveNewAccountWithRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D499B8] sharedLogger];
  [v8 didUseGeneratedPassword];

  v9 = [MEMORY[0x277D49B58] sharedStore];
  v10 = [v6 protectionSpace];
  v11 = [v6 savedAccountContext];
  v12 = [v6 username];
  v13 = [v6 generatedPassword];
  v14 = [v10 safari_userVisibleSiteForProtectionSpace];
  v15 = *MEMORY[0x277D49C38];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __86__WBUGeneratedPasswordCredentialUpdater__saveNewAccountWithRequest_completionHandler___block_invoke;
  v21[3] = &unk_279EB2028;
  v21[4] = self;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v6;
  v26 = v7;
  v16 = v7;
  v17 = v6;
  v18 = v11;
  v19 = v10;
  v20 = v9;
  [v20 saveUser:v12 password:v13 forUserTypedSite:v14 groupID:v15 completionHandler:v21];
}

void __86__WBUGeneratedPasswordCredentialUpdater__saveNewAccountWithRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__WBUGeneratedPasswordCredentialUpdater__saveNewAccountWithRequest_completionHandler___block_invoke_2;
  v12[3] = &unk_279EB2000;
  v13 = *(a1 + 40);
  v14 = v3;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v15 = v10;
  v16 = v9;
  v11 = v3;
  dispatch_async(v4, v12);
}

void __86__WBUGeneratedPasswordCredentialUpdater__saveNewAccountWithRequest_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = [*(a1 + 64) associatedDomainsManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__WBUGeneratedPasswordCredentialUpdater__saveNewAccountWithRequest_completionHandler___block_invoke_3;
  v7[3] = &unk_279EB18A8;
  v9 = *(a1 + 72);
  v8 = *(a1 + 40);
  [v2 setSavedAccountAsDefault:v3 forProtectionSpace:v4 context:v5 associatedDomainsManager:v6 completionHandler:v7];
}

- (void)_updateExistingSavedAccount:(id)a3 withNewGeneratedPassword:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = MEMORY[0x277D49B28];
  v10 = a4;
  v11 = objc_alloc_init(v9);
  [v11 setSavedAccount:v7];
  [v11 setPassword:v10];

  v12 = [MEMORY[0x277D49B58] sharedStore];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __112__WBUGeneratedPasswordCredentialUpdater__updateExistingSavedAccount_withNewGeneratedPassword_completionHandler___block_invoke;
  v15[3] = &unk_279EB18A8;
  v16 = v7;
  v17 = v8;
  v13 = v7;
  v14 = v8;
  [v12 changeSavedAccountWithRequest:v11 completionHandler:v15];
}

@end
@interface ICSServiceAuthHandler
- (AIDAServiceOwnerProtocol)serviceOwnersManager;
- (BOOL)accountMatchesPrimaryAccount:(id)account service:(id)service;
- (ICSServiceAuthHandler)initWithAccountManager:(id)manager presenter:(id)presenter;
- (id)account;
- (void)signInAccountForService:(id)service completion:(id)completion;
- (void)signOutAccountForService:(id)service completion:(id)completion;
@end

@implementation ICSServiceAuthHandler

- (ICSServiceAuthHandler)initWithAccountManager:(id)manager presenter:(id)presenter
{
  managerCopy = manager;
  presenterCopy = presenter;
  v12.receiver = self;
  v12.super_class = ICSServiceAuthHandler;
  v9 = [(ICSServiceAuthHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, manager);
    objc_storeWeak(&v10->_listController, presenterCopy);
  }

  return v10;
}

- (id)account
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (AIDAServiceOwnerProtocol)serviceOwnersManager
{
  serviceOwnersManager = self->_serviceOwnersManager;
  if (!serviceOwnersManager)
  {
    v4 = objc_alloc(MEMORY[0x277CED1E8]);
    accountStore = [(AIDAAccountManager *)self->_accountManager accountStore];
    v6 = [v4 initWithAccountStore:accountStore];
    v7 = self->_serviceOwnersManager;
    self->_serviceOwnersManager = v6;

    serviceOwnersManager = self->_serviceOwnersManager;
  }

  return serviceOwnersManager;
}

- (void)signInAccountForService:(id)service completion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke;
  aBlock[3] = &unk_27A666868;
  v8 = completionCopy;
  v44 = v8;
  v9 = _Block_copy(aBlock);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_3;
  v40[3] = &unk_27A6668E0;
  v40[4] = self;
  v10 = serviceCopy;
  v41 = v10;
  v11 = v9;
  v42 = v11;
  v12 = _Block_copy(v40);
  v13 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager accountForService:v10];
  if (v13)
  {
    v14 = [(ICSServiceAuthHandler *)self accountMatchesPrimaryAccount:v13 service:v10];
    v15 = LogSubsystem();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        *buf = 138412290;
        v46 = v10;
        _os_log_impl(&dword_275819000, v15, OS_LOG_TYPE_DEFAULT, "Already signed in to service %@, marking as such...", buf, 0xCu);
      }

      (*(v11 + 2))(v11, 1);
    }

    else
    {
      v35 = v12;
      v36 = v8;
      if (v16)
      {
        *buf = 138412290;
        v46 = v10;
        _os_log_impl(&dword_275819000, v15, OS_LOG_TYPE_DEFAULT, "User already signed in to service %@, prompting for clarification...", buf, 0xCu);
      }

      v17 = AALocalizedStringForServiceType();
      v33 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"ICLOUD_SERVICE_SWAP_ACCOUNT_MESSAGE" value:&stru_288487370 table:@"Localizable-AppleID"];
      account = [(ICSServiceAuthHandler *)self account];
      username = [account username];
      username2 = [v13 username];
      v34 = [v33 stringWithFormat:v19, v17, username, username2];

      v23 = MEMORY[0x277CCACA8];
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:@"ICLOUD_SERVICE_SWAP_ACCOUNT_ACTION" value:&stru_288487370 table:@"Localizable-AppleID"];
      v32 = [v23 stringWithFormat:v25, v17];

      v26 = MEMORY[0x277D75110];
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v28 = [v27 localizedStringForKey:@"CANCEL" value:&stru_288487370 table:@"Localizable-AppleID"];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_87;
      v37[3] = &unk_27A666908;
      v38 = v36;
      v12 = v35;
      v39 = v35;
      v29 = [v26 alertWithTitle:v34 message:0 cancelButtonTitle:v28 defaultButtonTitle:v32 actionHandler:v37];

      WeakRetained = objc_loadWeakRetained(&self->_listController);
      [WeakRetained presentViewController:v29 animated:1 completion:0];

      v8 = v36;
    }
  }

  else
  {
    (*(v12 + 2))(v12, 0);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_2;
  v3[3] = &unk_27A6661E8;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_3(id *a1, char a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CF0380]);
  v5 = [a1[4] account];
  v6 = [v5 aa_altDSID];
  [v4 setAltDSID:v6];

  [v4 setIsUsernameEditable:0];
  WeakRetained = objc_loadWeakRetained(a1[4] + 2);
  [v4 setPresentingViewController:WeakRetained];

  v8 = a1[5];
  if ([v8 isEqualToString:*MEMORY[0x277CED1A0]])
  {
    v9 = 1;
  }

  else if ([v8 isEqualToString:*MEMORY[0x277CED1C0]])
  {
    v9 = 2;
  }

  else if ([v8 isEqualToString:*MEMORY[0x277CED1B8]])
  {
    v9 = 4;
  }

  else if ([v8 isEqualToString:*MEMORY[0x277CED1A8]])
  {
    v9 = 5;
  }

  else if ([v8 isEqualToString:*MEMORY[0x277CED1B0]])
  {
    v9 = 6;
  }

  else
  {
    v9 = 0;
  }

  [v4 setServiceType:v9];
  v10 = [a1[4] account];
  v11 = [v10 username];
  [v4 setUsername:v11];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = objc_alloc_init(MEMORY[0x277CF0178]);
  v12 = v22[5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_53;
  v16[3] = &unk_27A6668B8;
  v19 = &v21;
  v13 = a1[6];
  v20 = a2;
  v14 = a1[4];
  v15 = a1[5];
  v18 = v13;
  v16[4] = v14;
  v17 = v15;
  [v12 authenticateWithContext:v4 completion:v16];

  _Block_object_dispose(&v21, 8);
}

void __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_53(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (v6)
  {
    v9 = LogSubsystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_53_cold_1(v6, v9);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CED1D8]);
    [v10 setAuthenticationResults:v5];
    [v10 setShouldForceOperation:*(a1 + 64)];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v10 setViewController:WeakRetained];

    v12 = *(a1 + 40);
    if (v12 == *MEMORY[0x277CED1B0])
    {
      v19 = *MEMORY[0x277CED1B0];
      v20[0] = &unk_28849FD88;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      [v10 setSignInContexts:v13];

      v12 = *(a1 + 40);
    }

    v14 = *(*(a1 + 32) + 24);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_60;
    v16[3] = &unk_27A666890;
    v17 = v12;
    v18 = *(a1 + 48);
    [v14 signInService:v17 withContext:v10 completion:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_60(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogSubsystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v10 = 138543874;
    if (a2)
    {
      v8 = @"YES";
    }

    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "Signed in to service %{public}@ with success: %@, error: %@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_87(uint64_t a1, int a2)
{
  v4 = LogSubsystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "User chose not to swap, bailing!", buf, 2u);
    }

    v6 = 32;
  }

  else
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&dword_275819000, v4, OS_LOG_TYPE_DEFAULT, "User opted to swap accounts, on it!", v8, 2u);
    }

    v6 = 40;
  }

  return (*(*(a1 + v6) + 16))();
}

- (void)signOutAccountForService:(id)service completion:(id)completion
{
  v41[2] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  completionCopy = completion;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1;
  v34 = __Block_byref_object_dispose__1;
  v8 = objc_alloc(MEMORY[0x277CECAE8]);
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  v35 = [v8 initWithPresentingViewController:WeakRetained];

  [v31[5] setAccountManager:self->_accountManager];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__ICSServiceAuthHandler_signOutAccountForService_completion___block_invoke;
  aBlock[3] = &unk_27A666930;
  v29 = &v30;
  v10 = completionCopy;
  v28 = v10;
  v11 = _Block_copy(aBlock);
  v12 = objc_alloc_init(MEMORY[0x277CED1D8]);
  v13 = objc_loadWeakRetained(&self->_listController);
  [v12 setViewController:v13];

  v14 = *MEMORY[0x277CED1B0];
  v15 = *MEMORY[0x277CED1A0];
  if (*MEMORY[0x277CED1B0] == serviceCopy)
  {
    v18 = v31[5];
    v40[0] = *MEMORY[0x277CED1A0];
    v40[1] = v14;
    v41[0] = v18;
    v41[1] = &unk_28849FDB0;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
  }

  else
  {
    v16 = v31[5];
    v38 = *MEMORY[0x277CED1A0];
    v39 = v16;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  }
  v17 = ;
  [v12 setSignOutContexts:v17];

  v19 = LogSubsystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = serviceCopy;
    _os_log_impl(&dword_275819000, v19, OS_LOG_TYPE_DEFAULT, "Attempting sign out for service: %{public}@", buf, 0xCu);
  }

  serviceOwnersManager = self->_serviceOwnersManager;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __61__ICSServiceAuthHandler_signOutAccountForService_completion___block_invoke_96;
  v24[3] = &unk_27A666890;
  v21 = serviceCopy;
  v25 = v21;
  v22 = v11;
  v26 = v22;
  [(AIDAServiceOwnerProtocol *)serviceOwnersManager signOutService:v21 withContext:v12 completion:v24];

  _Block_object_dispose(&v30, 8);
  v23 = *MEMORY[0x277D85DE8];
}

void __61__ICSServiceAuthHandler_signOutAccountForService_completion___block_invoke(uint64_t a1, char a2)
{
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__ICSServiceAuthHandler_signOutAccountForService_completion___block_invoke_2;
  v6[3] = &unk_27A6661E8;
  v7 = *(a1 + 32);
  v8 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __61__ICSServiceAuthHandler_signOutAccountForService_completion___block_invoke_96(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogSubsystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v10 = 138543874;
    if (a2)
    {
      v8 = @"YES";
    }

    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_275819000, v6, OS_LOG_TYPE_DEFAULT, "Signed out of service: %{public}@, success: %@, error: %@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)accountMatchesPrimaryAccount:(id)account service:(id)service
{
  accountCopy = account;
  serviceCopy = service;
  v8 = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager altDSIDForAccount:accountCopy service:serviceCopy];
  if (v8)
  {
    v9 = MEMORY[0x277CCABB0];
    account = [(ICSServiceAuthHandler *)self account];
    aa_altDSID = [account aa_altDSID];
    aa_personID = [v9 numberWithBool:{objc_msgSend(aa_altDSID, "isEqualToString:", v8)}];
    v13 = aa_personID;
  }

  else
  {
    account = [(AIDAServiceOwnerProtocol *)self->_serviceOwnersManager DSIDForAccount:accountCopy service:serviceCopy];
    v14 = MEMORY[0x277CCABB0];
    account2 = [(ICSServiceAuthHandler *)self account];
    aa_altDSID = account2;
    if (account)
    {
      aa_personID = [account2 aa_personID];
      username = [v14 numberWithBool:{objc_msgSend(aa_personID, "isEqualToString:", account)}];
      v13 = username;
    }

    else
    {
      aa_personID = [account2 username];
      username = [accountCopy username];
      v13 = [v14 numberWithBool:{objc_msgSend(aa_personID, "isEqualToString:", username)}];
    }
  }

  return v13 != 0;
}

void __60__ICSServiceAuthHandler_signInAccountForService_completion___block_invoke_53_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_275819000, a2, OS_LOG_TYPE_ERROR, "AuthKit authentication returned an error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
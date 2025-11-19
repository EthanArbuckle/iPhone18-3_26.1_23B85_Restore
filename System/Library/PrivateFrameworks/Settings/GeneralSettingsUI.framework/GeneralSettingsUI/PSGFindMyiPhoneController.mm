@interface PSGFindMyiPhoneController
+ (id)shared;
- (BOOL)isFindMyiPhoneEnabled;
- (BOOL)isFindMyiPhoneProvisioned;
- (PSGFindMyiPhoneController)init;
- (id)preferredFindMyiPhoneAccount;
- (void)dealloc;
- (void)disablePhoneLocatorWithMessageString:(id)a3 buttonTitle:(id)a4 presentingViewController:(id)a5 completion:(id)a6;
- (void)enablePhoneLocatorWithCompletion:(id)a3;
- (void)locatorStateDidChange:(id)a3;
@end

@implementation PSGFindMyiPhoneController

+ (id)shared
{
  v2 = gFindMyiPhoneController;
  if (!gFindMyiPhoneController)
  {
    v3 = objc_alloc_init(PSGFindMyiPhoneController);
    v4 = gFindMyiPhoneController;
    gFindMyiPhoneController = v3;

    v2 = gFindMyiPhoneController;
  }

  return v2;
}

- (PSGFindMyiPhoneController)init
{
  v5.receiver = self;
  v5.super_class = PSGFindMyiPhoneController;
  v2 = [(PSGFindMyiPhoneController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_locatorStateDidChange_ name:*MEMORY[0x277CEC9A0] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSGFindMyiPhoneController;
  [(PSGFindMyiPhoneController *)&v4 dealloc];
}

- (BOOL)isFindMyiPhoneProvisioned
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [MEMORY[0x277CEC748] sharedManager];
  v3 = [v2 accounts];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = *MEMORY[0x277CB9128];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v12 + 1) + 8 * i) isProvisionedForDataclass:v7])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isFindMyiPhoneEnabled
{
  v3 = dispatch_semaphore_create(0);
  stateChangeSem = self->_stateChangeSem;
  self->_stateChangeSem = v3;

  v5 = [MEMORY[0x277CECA38] sharedInstance];
  v6 = [v5 isChangingState];

  if (v6)
  {
    dispatch_semaphore_wait(self->_stateChangeSem, 0xFFFFFFFFFFFFFFFFLL);
    v7 = [MEMORY[0x277CECA38] sharedInstance];
    if ([v7 isChangingState])
    {
      [PSGFindMyiPhoneController isFindMyiPhoneEnabled];
    }
  }

  v8 = self->_stateChangeSem;
  self->_stateChangeSem = 0;

  v9 = [MEMORY[0x277CECA38] sharedInstance];
  v10 = [v9 isEnabled];

  return v10;
}

- (void)locatorStateDidChange:(id)a3
{
  v4 = a3;
  if (self->_stateChangeSem)
  {
    v7 = v4;
    v5 = [MEMORY[0x277CECA38] sharedInstance];
    v6 = [v5 isChangingState];

    v4 = v7;
    if ((v6 & 1) == 0)
    {
      dispatch_semaphore_signal(self->_stateChangeSem);
      v4 = v7;
    }
  }
}

- (id)preferredFindMyiPhoneAccount
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [MEMORY[0x277CEC748] sharedManager];
  v3 = [v2 accounts];

  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    v8 = *MEMORY[0x277CB9128];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 isProvisionedForDataclass:v8])
        {
          if ([v10 accountServiceType] != 1 && objc_msgSend(v10, "accountServiceType") != 2)
          {
            [PSGFindMyiPhoneController preferredFindMyiPhoneAccount];
          }

          if (!v6 || [v6 accountServiceType] == 1 && objc_msgSend(v10, "accountServiceType") == 2 || (v11 = objc_msgSend(v6, "accountServiceType"), v11 == objc_msgSend(v10, "accountServiceType")) && objc_msgSend(v10, "primaryAccount"))
          {
            v12 = v10;

            v6 = v12;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)enablePhoneLocatorWithCompletion:(id)a3
{
  v4 = a3;
  if ([(PSGFindMyiPhoneController *)self isFindMyiPhoneEnabled])
  {
    v4[2](v4);
  }

  else
  {
    v5 = MEMORY[0x277CECA28];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__PSGFindMyiPhoneController_enablePhoneLocatorWithCompletion___block_invoke;
    v6[3] = &unk_278325110;
    v7 = v4;
    [v5 showEnableAlertWithCompletion:v6];
  }
}

uint64_t __62__PSGFindMyiPhoneController_enablePhoneLocatorWithCompletion___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)disablePhoneLocatorWithMessageString:(id)a3 buttonTitle:(id)a4 presentingViewController:(id)a5 completion:(id)a6
{
  v27[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x277CD4790]);
  v26 = &unk_282E8FE18;
  v27[0] = MEMORY[0x277CBEC38];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __114__PSGFindMyiPhoneController_disablePhoneLocatorWithMessageString_buttonTitle_presentingViewController_completion___block_invoke;
  v21[3] = &unk_278325160;
  v24 = v12;
  v25 = v13;
  v21[4] = self;
  v22 = v10;
  v23 = v11;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = v13;
  [v14 evaluatePolicy:1025 options:v15 reply:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __114__PSGFindMyiPhoneController_disablePhoneLocatorWithMessageString_buttonTitle_presentingViewController_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _PSGLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21CF20000, v5, OS_LOG_TYPE_DEFAULT, "Evalutaing Policy Location Based Device Owner Authentication", buf, 2u);
  }

  if (!v4)
  {
    v8 = [*(a1 + 32) preferredFindMyiPhoneAccount];
    v9 = _PSGLoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v8;
      _os_log_impl(&dword_21CF20000, v9, OS_LOG_TYPE_DEFAULT, "########### FMiP Account: %@", buf, 0xCu);
    }

    if (v8)
    {
      v10 = [MEMORY[0x277CECA38] sharedInstance];
      v11 = [v10 isChangingState];

      if (v11)
      {
        v12 = _PSGLoggingFacility();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21CF20000, v12, OS_LOG_TYPE_DEFAULT, "########### FMiP state is changing.", buf, 2u);
        }

        v13 = 3;
      }

      else
      {
        v16 = [MEMORY[0x277CECA38] sharedInstance];
        v17 = [v16 isEnabled];

        if (v17)
        {
          goto LABEL_20;
        }

        v12 = _PSGLoggingFacility();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v13 = 2;
          _os_log_impl(&dword_21CF20000, v12, OS_LOG_TYPE_DEFAULT, "########### FMiP is already disabled.", buf, 2u);
        }

        else
        {
          v13 = 2;
        }
      }
    }

    else
    {
      v12 = _PSGLoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21CF20000, v12, OS_LOG_TYPE_DEFAULT, "########### No FMiP Account.", buf, 2u);
      }

      v13 = 1;
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:FindMyiPhoneControllerErrorDomain code:v13 userInfo:0];
    if (v14)
    {
      v15 = v14;
      (*(*(a1 + 64) + 16))();
LABEL_23:

      goto LABEL_24;
    }

LABEL_20:
    v18 = _PSGLoggingFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21CF20000, v18, OS_LOG_TYPE_DEFAULT, "########### FMiP have no error, proceeding to present alert.", buf, 2u);
    }

    v19 = MEMORY[0x277CECA28];
    v20 = [v8 account];
    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __114__PSGFindMyiPhoneController_disablePhoneLocatorWithMessageString_buttonTitle_presentingViewController_completion___block_invoke_17;
    v25[3] = &unk_278325138;
    v23 = *(a1 + 56);
    v26 = *(a1 + 64);
    [v19 showDisableAlertForAccount:v20 withMessage:v21 confirmationButtonTitle:v22 presentingViewController:v23 completion:v25];

    v15 = v26;
    goto LABEL_23;
  }

  v6 = _PSGLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v4;
    _os_log_impl(&dword_21CF20000, v6, OS_LOG_TYPE_DEFAULT, "Policy failed with %@", buf, 0xCu);
  }

  v7 = *(a1 + 64);
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:FindMyiPhoneControllerErrorDomain code:0 userInfo:0];
  (*(v7 + 16))(v7, v8, 0);
LABEL_24:

  v24 = *MEMORY[0x277D85DE8];
}

void __114__PSGFindMyiPhoneController_disablePhoneLocatorWithMessageString_buttonTitle_presentingViewController_completion___block_invoke_17(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _PSGLoggingFacility();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_21CF20000, v6, OS_LOG_TYPE_DEFAULT, "########### User cancelled erase in FMiP alert", &v11, 2u);
    }

    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:FindMyiPhoneControllerErrorDomain code:0 userInfo:0];
    (*(v8 + 16))(v8, v9, 0);
  }

  else
  {
    if (v7)
    {
      v11 = 134217984;
      v12 = [v5 length];
      _os_log_impl(&dword_21CF20000, v6, OS_LOG_TYPE_DEFAULT, "########### User confirms disable FMiP and obtained wipeToken of length: %ld", &v11, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end
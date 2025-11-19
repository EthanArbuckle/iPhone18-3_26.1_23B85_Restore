@interface PABSFingerprintController
- (BOOL)mustDisableDeleteFingerprintButton;
- (PABSFingerprintController)init;
- (id)fingerprintName;
- (id)getDeleteFingerprintGroup;
- (id)passcodeController;
- (id)representedBiometricIdentity;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)dealloc;
- (void)deleteFingerprint:(id)a3;
- (void)fetchBiometricTemplateForCurrentBiometricIdentity:(id)a3;
- (void)handleDTOStatusChanged;
- (void)presentAlertIfNeededBeforeDeletingFingerPrint:(id)a3;
- (void)presentAlertSheetForFingerprintBindingToGovernmentID:(id)a3;
- (void)presentPopUpAlertForFingerprintBindingToGovernmentID:(id)a3;
- (void)proceedWithDeleteFingerprintFor:(id)a3;
- (void)refreshDeleteFingerprintGroup;
- (void)registerObserverAndHandlerForDTOStatusChanges;
- (void)replaceFingerprint:(id)a3;
- (void)setFingerprintName:(id)a3;
- (void)setupDTOController;
- (void)updateDeleteFingerGroupEnablementStatus:(id)a3 deleteButtonSpecifier:(id)a4;
@end

@implementation PABSFingerprintController

- (PABSFingerprintController)init
{
  v5.receiver = self;
  v5.super_class = PABSFingerprintController;
  v2 = [(PABSFingerprintController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PABSFingerprintController *)v2 setupDTOController];
  }

  return v3;
}

- (void)dealloc
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, self, *MEMORY[0x277CD4768], 0);
  [(PABSFingerprintController *)self setIsObservingDTOStatusChange:0];
  v4 = PABSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "DTO: Stopped observing status changes", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = PABSFingerprintController;
  [(PABSFingerprintController *)&v5 dealloc];
}

void __44__PABSFingerprintController_viewWillAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v3 = [v2 topViewController];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    v7 = [*(a1 + 32) navigationController];
    v6 = [v7 popViewControllerAnimated:1];
  }

  else
  {
    v5 = PABSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "MCEffectiveSettingsChangedNotification: - Reloading Pane -", buf, 2u);
    }

    [*(a1 + 32) reloadSpecifiers];
  }
}

- (id)representedBiometricIdentity
{
  v2 = [(PABSFingerprintController *)self specifier];
  v3 = [v2 propertyForKey:@"FingerprintIdentity"];

  return v3;
}

- (void)presentAlertIfNeededBeforeDeletingFingerPrint:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PABSFingerprintController *)self specifier];
  v6 = [v5 propertyForKey:@"BIOMETRIC_TEMPLATE_BINDING"];

  v7 = PABSLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 propertyForKey:@"FingerprintIdentity"];
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_25E0E9000, v7, OS_LOG_TYPE_DEFAULT, "GovernmentID binding status for biometric: %@ is %@", &v13, 0x16u);
  }

  if (v6)
  {
    if ([v6 BOOLValue])
    {
      [(PABSFingerprintController *)self presentAlertSheetForFingerprintBindingToGovernmentID:v4];
    }

    else
    {
      v11 = PABSLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_25E0E9000, v11, OS_LOG_TYPE_DEFAULT, "Biometic is not bound to government ID, delete fingerprint directly", &v13, 2u);
      }

      [(PABSFingerprintController *)self deleteFingerprint:v4];
    }
  }

  else
  {
    v9 = PABSLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 propertyForKey:@"FingerprintIdentity"];
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_25E0E9000, v9, OS_LOG_TYPE_DEFAULT, "Have not determined biometric binding identity for biometric: %@", &v13, 0xCu);
    }

    [(PSListController *)self configureSpin:1 ofCellForSpecifier:v4 setEnabled:0];
    [(PABSFingerprintController *)self fetchBiometricTemplateForCurrentBiometricIdentity:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)fetchBiometricTemplateForCurrentBiometricIdentity:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(MEMORY[0x277CFFE58]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__PABSFingerprintController_fetchBiometricTemplateForCurrentBiometricIdentity___block_invoke;
  v7[3] = &unk_279A03420;
  objc_copyWeak(&v10, &location);
  v6 = v4;
  v8 = v6;
  v9 = self;
  [v5 globalAuthACLTemplateUUIDsAndBoundCredentialsCountWithCompletion:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __79__PABSFingerprintController_fetchBiometricTemplateForCurrentBiometricIdentity___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__PABSFingerprintController_fetchBiometricTemplateForCurrentBiometricIdentity___block_invoke_2;
  v11[3] = &unk_279A033F8;
  objc_copyWeak(v16, (a1 + 48));
  v12 = v8;
  v13 = *(a1 + 32);
  v14 = v7;
  v15 = *(a1 + 40);
  v16[1] = a3;
  v9 = v7;
  v10 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v11);

  objc_destroyWeak(v16);
}

void __79__PABSFingerprintController_fetchBiometricTemplateForCurrentBiometricIdentity___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 64));
    v4 = *(a1 + 32);
    v5 = PABSLogForCategory(0);
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __79__PABSFingerprintController_fetchBiometricTemplateForCurrentBiometricIdentity___block_invoke_2_cold_1((a1 + 32), v6);
      }

      [v3 fetchBiometricTemplateForCurrentBiometricIdentity:*(a1 + 40)];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 48);
        *buf = 138412290;
        v27 = v7;
        _os_log_impl(&dword_25E0E9000, v6, OS_LOG_TYPE_DEFAULT, "Fetched biometric template UUIDs: %@", buf, 0xCu);
      }

      if ([*(a1 + 48) count] && *(a1 + 48))
      {
        v8 = [*(a1 + 56) representedBiometricIdentity];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = *(a1 + 48);
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = *v23;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v23 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v22 + 1) + 8 * i);
              v14 = [v8 uuid];
              v15 = [v13 isEqual:v14];

              if (v15)
              {
                v16 = PABSLogForCategory(0);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v27 = v13;
                  v28 = 2112;
                  v29 = v8;
                  _os_log_impl(&dword_25E0E9000, v16, OS_LOG_TYPE_DEFAULT, "UUID: %@ matched with biometric identity: %@", buf, 0x16u);
                }

                v10 = 1;
                goto LABEL_23;
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_23:

        v17 = [v3 specifier];
        v18 = [MEMORY[0x277CCABB0] numberWithBool:v10];
        [v17 setProperty:v18 forKey:@"BIOMETRIC_TEMPLATE_BINDING"];

        v19 = [v3 specifier];
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72)];
        [v19 setProperty:v20 forKey:@"BOUND_CREDENTIALS_COUNT_BINDING"];
      }

      else
      {
        v8 = [v3 specifier];
        [v8 setProperty:MEMORY[0x277CBEC28] forKey:@"BIOMETRIC_TEMPLATE_BINDING"];
      }

      [v3 configureSpin:0 ofCellForSpecifier:*(a1 + 40) setEnabled:1];
      [v3 presentAlertIfNeededBeforeDeletingFingerPrint:*(a1 + 40)];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)presentAlertSheetForFingerprintBindingToGovernmentID:(id)a3
{
  v4 = a3;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Presenting first alert for government binding biometrics", buf, 2u);
  }

  v6 = [(PABSFingerprintController *)self specifier];
  v7 = [v6 propertyForKey:@"BOUND_CREDENTIALS_COUNT_BINDING"];

  v8 = @"DELETE_FINGERPRINT_SHEET_MESSAGE";
  if (v7 && [v7 intValue] > 1)
  {
    v8 = @"DELETE_FINGERPRINT_SHEET_MESSAGE_PLURAL";
  }

  v9 = MEMORY[0x277D75110];
  v10 = PABS_LocalizedStringForPasscodeLock(@"DELETE_FINGERPRINT_SHEET_TITLE");
  v11 = PABS_LocalizedStringForPasscodeLock(v8);
  v12 = [v9 alertControllerWithTitle:v10 message:v11 preferredStyle:0];

  v13 = +[PABSBiometrics identities];
  v14 = [v13 count];

  if (v14 >= 2)
  {
    v15 = MEMORY[0x277D750F8];
    v16 = PABS_LocalizedStringForPasscodeLock(@"REPLACE_FINGERPRINT");
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __82__PABSFingerprintController_presentAlertSheetForFingerprintBindingToGovernmentID___block_invoke;
    v31[3] = &unk_279A03220;
    v31[4] = self;
    v32 = v4;
    v17 = [v15 actionWithTitle:v16 style:0 handler:v31];
    [v12 addAction:v17];
  }

  v18 = MEMORY[0x277D750F8];
  v19 = PABS_LocalizedStringForPasscodeLock(@"DELETE_SINGULAR");
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __82__PABSFingerprintController_presentAlertSheetForFingerprintBindingToGovernmentID___block_invoke_291;
  v28 = &unk_279A03220;
  v29 = self;
  v30 = v4;
  v20 = v4;
  v21 = [v18 actionWithTitle:v19 style:2 handler:&v25];
  [v12 addAction:{v21, v25, v26, v27, v28, v29}];

  v22 = MEMORY[0x277D750F8];
  v23 = PABS_LocalizedStringForPasscodeLock(@"CANCEL");
  v24 = [v22 actionWithTitle:v23 style:1 handler:0];
  [v12 addAction:v24];

  [(PABSFingerprintController *)self presentViewController:v12 animated:1 completion:0];
}

uint64_t __82__PABSFingerprintController_presentAlertSheetForFingerprintBindingToGovernmentID___block_invoke(uint64_t a1)
{
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "Proceed replacing biobinding identity", v4, 2u);
  }

  return [*(a1 + 32) replaceFingerprint:*(a1 + 40)];
}

uint64_t __82__PABSFingerprintController_presentAlertSheetForFingerprintBindingToGovernmentID___block_invoke_291(uint64_t a1)
{
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "Continue presenting second alert for deleting biometric identity", v4, 2u);
  }

  return [*(a1 + 32) presentPopUpAlertForFingerprintBindingToGovernmentID:*(a1 + 40)];
}

- (void)presentPopUpAlertForFingerprintBindingToGovernmentID:(id)a3
{
  v4 = a3;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Presenting second alert for government binding biometrics", buf, 2u);
  }

  v6 = [(PABSFingerprintController *)self specifier];
  v7 = [v6 propertyForKey:@"BOUND_CREDENTIALS_COUNT_BINDING"];

  v8 = @"DELETE_FINGERPRINT_ALERT_MESSAGE";
  if (v7 && [v7 intValue] > 1)
  {
    v8 = @"DELETE_FINGERPRINT_ALERT_MESSAGE_PLURAL";
  }

  v9 = MEMORY[0x277D75110];
  v10 = PABS_LocalizedStringForPasscodeLock(@"DELETE_FINGERPRINT_ALERT_TITLE");
  v11 = PABS_LocalizedStringForPasscodeLock(v8);
  v12 = [v9 alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v13 = MEMORY[0x277D750F8];
  v14 = PABS_LocalizedStringForPasscodeLock(@"CANCEL");
  v15 = [v13 actionWithTitle:v14 style:1 handler:0];
  [v12 addAction:v15];

  v16 = MEMORY[0x277D750F8];
  v17 = PABS_LocalizedStringForPasscodeLock(@"CONTINUE");
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __82__PABSFingerprintController_presentPopUpAlertForFingerprintBindingToGovernmentID___block_invoke;
  v23 = &unk_279A03220;
  v24 = self;
  v25 = v4;
  v18 = v4;
  v19 = [v16 actionWithTitle:v17 style:2 handler:&v20];
  [v12 addAction:{v19, v20, v21, v22, v23, v24}];

  [(PABSFingerprintController *)self presentViewController:v12 animated:1 completion:0];
}

uint64_t __82__PABSFingerprintController_presentPopUpAlertForFingerprintBindingToGovernmentID___block_invoke(uint64_t a1)
{
  v2 = PABSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25E0E9000, v2, OS_LOG_TYPE_DEFAULT, "Proceed to delete government binding fingerprint", v5, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"PSBiometricBindingDeleted" object:0];

  return [*(a1 + 32) deleteFingerprint:*(a1 + 40)];
}

- (void)replaceFingerprint:(id)a3
{
  v4 = a3;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Showing biometric replacement UI", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6 = objc_alloc_init(MEMORY[0x277CFFE60]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__PABSFingerprintController_replaceFingerprint___block_invoke;
  v9[3] = &unk_279A03470;
  objc_copyWeak(&v10, buf);
  v9[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__PABSFingerprintController_replaceFingerprint___block_invoke_311;
  v7[3] = &unk_279A034C0;
  objc_copyWeak(&v8, buf);
  v7[4] = self;
  [v6 beginBiometricReplacementWithAuthenticationHandler:v9 andCompletion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);

  objc_destroyWeak(buf);
}

void __48__PABSFingerprintController_replaceFingerprint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PABSFingerprintController_replaceFingerprint___block_invoke_2;
  block[3] = &unk_279A03448;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __48__PABSFingerprintController_replaceFingerprint___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (a1[4])
  {
    v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:WeakRetained action:sel_cancelModalFlow];
    v4 = [a1[4] navigationItem];
    [v4 setLeftBarButtonItem:v3];

    [a1[4] setModalPresentationStyle:2];
    [MEMORY[0x277D37610] preferredContentSize];
    [a1[4] setPreferredContentSize:?];
    [a1[5] presentViewController:a1[4] animated:1 completion:&__block_literal_global_0];
  }

  else
  {
    v5 = PABSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Did not show biometric replacement UI", v6, 2u);
    }
  }
}

void __48__PABSFingerprintController_replaceFingerprint___block_invoke_309()
{
  v0 = PABSLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_25E0E9000, v0, OS_LOG_TYPE_DEFAULT, "Has shown biometric replacement UI in modal sheet", v1, 2u);
  }
}

void __48__PABSFingerprintController_replaceFingerprint___block_invoke_311(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__PABSFingerprintController_replaceFingerprint___block_invoke_2_312;
  v10[3] = &unk_279A03498;
  objc_copyWeak(&v14, (a1 + 40));
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);

  objc_destroyWeak(&v14);
}

void __48__PABSFingerprintController_replaceFingerprint___block_invoke_2_312(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 32))
  {
    v3 = PABSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __48__PABSFingerprintController_replaceFingerprint___block_invoke_2_312_cold_1((a1 + 32), v3);
    }
  }

  else
  {
    v3 = [*(a1 + 40) representedBiometricIdentity];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = *(a1 + 48);
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [v3 uuid];
          LOBYTE(v10) = [v11 isEqual:v10];

          v7 |= v10;
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v12 = PABSLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      *buf = 138412546;
      v23 = v13;
      v24 = 1024;
      v25 = v7 & 1;
      _os_log_impl(&dword_25E0E9000, v12, OS_LOG_TYPE_DEFAULT, "Replaced biometric identity with new UUIDs: %@, current identity binding status: %d", buf, 0x12u);
    }

    v14 = [WeakRetained specifier];
    v15 = [MEMORY[0x277CCABB0] numberWithBool:v7 & 1];
    [v14 setProperty:v15 forKey:@"BIOMETRIC_TEMPLATE_BINDING"];

    v16 = [*(a1 + 40) parentController];
    [v16 updateWithReplacedUUIDs:*(a1 + 48)];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)deleteFingerprint:(id)a3
{
  v4 = a3;
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "Touch ID: User pressed Delete Fingerprint", buf, 2u);
  }

  v6 = [(PABSFingerprintController *)self dtoController];
  v7 = [v6 isRatchetEnabled];

  if (v7)
  {
    objc_initWeak(buf, self);
    v8 = [(PABSFingerprintController *)self dtoController];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__PABSFingerprintController_deleteFingerprint___block_invoke;
    v9[3] = &unk_279A03248;
    objc_copyWeak(&v11, buf);
    v10 = v4;
    [v8 gateWithRatchetForOperation:4 forPresentingVC:self completion:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    [(PABSFingerprintController *)self proceedWithDeleteFingerprintFor:v4];
  }
}

void __47__PABSFingerprintController_deleteFingerprint___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v2 = PABSLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __47__PABSFingerprintController_deleteFingerprint___block_invoke_cold_1();
    }
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__PABSFingerprintController_deleteFingerprint___block_invoke_314;
    v4[3] = &unk_279A030A8;
    objc_copyWeak(&v6, (a1 + 40));
    v5 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v4);

    objc_destroyWeak(&v6);
  }
}

void __47__PABSFingerprintController_deleteFingerprint___block_invoke_314(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = PABSLogForCategory(0);
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25E0E9000, v4, OS_LOG_TYPE_DEFAULT, "Touch ID: Starting deletion of fingerprint", v5, 2u);
    }

    [WeakRetained proceedWithDeleteFingerprintFor:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __47__PABSFingerprintController_deleteFingerprint___block_invoke_314_cold_1();
    }
  }
}

- (void)proceedWithDeleteFingerprintFor:(id)a3
{
  v4 = a3;
  v5 = [(PABSFingerprintController *)self parentController];
  v6 = +[PABSBiometrics sharedInstance];
  v7 = [(PABSFingerprintController *)self representedBiometricIdentity];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __61__PABSFingerprintController_proceedWithDeleteFingerprintFor___block_invoke;
  v15 = &unk_279A034E8;
  v16 = v4;
  v17 = v5;
  v8 = v5;
  v9 = v4;
  [v6 removeIdentity:v7 completion:&v12];

  v10 = [(PABSFingerprintController *)self navigationController:v12];
  v11 = [v10 popViewControllerAnimated:1];
}

void __61__PABSFingerprintController_proceedWithDeleteFingerprintFor___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PABSLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) identifier];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v9 = [v5 description];
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_25E0E9000, v6, OS_LOG_TYPE_DEFAULT, "%@: Remove Identity: Result [%@] Error [%@] - Reloading Pane -", &v11, 0x20u);
  }

  [*(a1 + 40) reloadSpecifiers];
  v10 = *MEMORY[0x277D85DE8];
}

- (id)fingerprintName
{
  v2 = [(PABSFingerprintController *)self representedBiometricIdentity];
  v3 = [v2 name];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_286FD1EF8;
  }

  v6 = v5;

  return v5;
}

- (void)setFingerprintName:(id)a3
{
  v6 = a3;
  if ([v6 length])
  {
    v4 = +[PABSBiometrics sharedInstance];
    v5 = [(PABSFingerprintController *)self representedBiometricIdentity];
    [v4 setName:v6 forIdentity:v5 completion:&__block_literal_global_316];
  }
}

void __48__PABSFingerprintController_setFingerprintName___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_318);
  }
}

void __48__PABSFingerprintController_setFingerprintName___block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"PSEnrollmentNameChanged" object:0];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    [(PABSFingerprintController *)self setTitle:0];
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v5 addObject:v6];

    v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:sel_setFingerprintName_ get:sel_fingerprintName detail:0 cell:8 edit:0];
    [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF20]];
    v8 = [MEMORY[0x277D262A0] sharedConnection];
    v9 = [v8 isFingerprintModificationAllowed];

    if ((v9 & 1) == 0)
    {
      [v7 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    }

    [v5 addObject:v7];
    v10 = [MEMORY[0x277D262A0] sharedConnection];
    v11 = [v10 isFingerprintModificationAllowed];

    if (v11)
    {
      v12 = [(PABSFingerprintController *)self getDeleteFingerprintGroup];
      [v5 addObjectsFromArray:v12];
    }

    v13 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)refreshDeleteFingerprintGroup
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(PABSFingerprintController *)self specifierForID:@"DELETE_FINGERPRINT"];
  v4 = [(PABSFingerprintController *)self getGroupSpecifierForSpecifier:v3];
  [(PABSFingerprintController *)self updateDeleteFingerGroupEnablementStatus:v3 deleteButtonSpecifier:v4];
  v5 = PABSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_25E0E9000, v5, OS_LOG_TYPE_DEFAULT, "%@: - Reloading -", &v8, 0xCu);
  }

  [(PABSFingerprintController *)self reloadSpecifier:v4];
  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)mustDisableDeleteFingerprintButton
{
  v3 = +[PABSBiometrics sharedInstance];
  v4 = [v3 identitiesForIdentityType:1];

  if ([v4 count] == 1)
  {
    v5 = [(PABSFingerprintController *)self dtoController];
    v6 = [v5 isRatchetEnabled];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getDeleteFingerprintGroup
{
  v3 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
  v4 = MEMORY[0x277D3FAD8];
  v5 = PABS_LocalizedStringForPasscodeLock(@"DELETE_FINGERPRINT");
  v6 = [v4 deleteButtonSpecifierWithName:v5 target:self action:sel_presentAlertIfNeededBeforeDeletingFingerPrint_];

  [v6 setIdentifier:@"DELETE_FINGERPRINT"];
  [(PABSFingerprintController *)self updateDeleteFingerGroupEnablementStatus:v3 deleteButtonSpecifier:v6];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:{v3, v6, 0}];

  return v7;
}

- (void)updateDeleteFingerGroupEnablementStatus:(id)a3 deleteButtonSpecifier:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(PABSFingerprintController *)self mustDisableDeleteFingerprintButton])
  {
    v7 = PABS_LocalizedStringForPasscodeLock(@"REMOVE_TOUCHID_GROUP_FOOTER_SDPISON");
    [v9 setProperty:v7 forKey:*MEMORY[0x277D3FF88]];

    v8 = MEMORY[0x277CBEC28];
  }

  else
  {
    [v9 removePropertyForKey:*MEMORY[0x277D3FF88]];
    v8 = MEMORY[0x277CBEC38];
  }

  [v6 setProperty:v8 forKey:*MEMORY[0x277D3FF38]];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = PABSFingerprintController;
  v5 = [(PABSFingerprintController *)&v9 tableView:a3 cellForRowAtIndexPath:a4];
  if ([v5 tag] == 8)
  {
    v6 = [v5 editableTextField];
    [v6 setAutocapitalizationType:2];
    [v6 setAutocorrectionType:1];
    [v6 setAutoresizesTextToFit:1];
    [v6 setReturnKeyType:9];
    [v6 setClearButtonMode:1];
    v7 = [(PABSFingerprintController *)self fingerprintName];
    [v6 setPlaceholder:v7];

    [v5 setControllerDelegate:self];
  }

  return v5;
}

- (id)passcodeController
{
  v2 = objc_alloc_init(PSTouchIDPINController);

  return v2;
}

- (void)setupDTOController
{
  v3 = [(PABSFingerprintController *)self dtoController];

  if (!v3)
  {
    v4 = objc_opt_new();
    [(PABSFingerprintController *)self setDtoController:v4];

    [(PABSFingerprintController *)self registerObserverAndHandlerForDTOStatusChanges];
  }
}

- (void)registerObserverAndHandlerForDTOStatusChanges
{
  if (![(PABSFingerprintController *)self isObservingDTOStatusChange])
  {
    v3 = PABSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_25E0E9000, v3, OS_LOG_TYPE_DEFAULT, "DTO: Start observing status changes", v5, 2u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, dtoStatusChangedNotification, *MEMORY[0x277CD4768], 0, 1028);
    [(PABSFingerprintController *)self setIsObservingDTOStatusChange:1];
  }
}

- (void)handleDTOStatusChanged
{
  v3 = PABSLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_25E0E9000, v3, OS_LOG_TYPE_DEFAULT, "Fingerprint Controller: DTOStatusChanged", buf, 2u);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PABSFingerprintController_handleDTOStatusChanged__block_invoke;
  block[3] = &unk_279A031D0;
  objc_copyWeak(&v5, buf);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

void __51__PABSFingerprintController_handleDTOStatusChanged__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained refreshDeleteFingerprintGroup];
  }

  else
  {
    v3 = PABSLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__PABSPearlPasscodeController_handleDTOStatusChanged__block_invoke_cold_1();
    }
  }
}

void __79__PABSFingerprintController_fetchBiometricTemplateForCurrentBiometricIdentity___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_25E0E9000, a2, OS_LOG_TYPE_ERROR, "Failed fetching biometric template UUIDs with error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __48__PABSFingerprintController_replaceFingerprint___block_invoke_2_312_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_25E0E9000, a2, OS_LOG_TYPE_ERROR, "Error replacing biometric identity: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end
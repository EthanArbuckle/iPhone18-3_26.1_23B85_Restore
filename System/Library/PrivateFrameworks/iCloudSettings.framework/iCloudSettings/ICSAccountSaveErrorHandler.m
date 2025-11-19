@interface ICSAccountSaveErrorHandler
- (ICSAccountSaveErrorHandler)initWithPresenter:(id)a3;
- (void)_beginManateeUpgradeForAccount:(id)a3 failedDataclassName:(id)a4;
- (void)_displayAccountSaveErrorAlertWithTitle:(id)a3 message:(id)a4 alternativeAction:(id)a5;
- (void)_handleInsufficientStorageWithUserInfo:(id)a3;
- (void)_handleManateeErrorForAccount:(id)a3 withDescription:(id)a4 failedDataclasses:(id)a5;
- (void)_handleMaxTierAndInsufficientStorageErrorWithFailedDataclasses:(id)a3;
- (void)handleAccountSaveError:(id)a3 forAccount:(id)a4 failedDataclasses:(id)a5;
@end

@implementation ICSAccountSaveErrorHandler

- (ICSAccountSaveErrorHandler)initWithPresenter:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICSAccountSaveErrorHandler;
  v5 = [(ICSAccountSaveErrorHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presenter, v4);
  }

  return v6;
}

- (void)handleAccountSaveError:(id)a3 forAccount:(id)a4 failedDataclasses:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 domain];
  v12 = [v11 isEqualToString:*MEMORY[0x277CEC6A8]];

  if (v12)
  {
    v13 = [v8 code];
    v14 = LogSubsystem();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (v13 == 2)
    {
      if (v15)
      {
        [ICSAccountSaveErrorHandler handleAccountSaveError:forAccount:failedDataclasses:];
      }

      [(ICSAccountSaveErrorHandler *)self _handleMaxTierAndInsufficientStorageErrorWithFailedDataclasses:v10];
    }

    else
    {
      if (v13 == 1)
      {
        if (v15)
        {
          [ICSAccountSaveErrorHandler handleAccountSaveError:forAccount:failedDataclasses:];
        }

        v14 = [v8 localizedRecoverySuggestion];
        [(ICSAccountSaveErrorHandler *)self _handleManateeErrorForAccount:v9 withDescription:v14 failedDataclasses:v10];
      }

      else if (v13)
      {
        if (v15)
        {
          [ICSAccountSaveErrorHandler handleAccountSaveError:forAccount:failedDataclasses:];
        }
      }

      else
      {
        if (v15)
        {
          [ICSAccountSaveErrorHandler handleAccountSaveError:forAccount:failedDataclasses:];
        }

        v14 = [v8 userInfo];
        [(ICSAccountSaveErrorHandler *)self _handleInsufficientStorageWithUserInfo:v14];
      }
    }
  }

  [v9 reload];
}

- (void)_handleInsufficientStorageWithUserInfo:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__ICSAccountSaveErrorHandler__handleInsufficientStorageWithUserInfo___block_invoke;
  v6[3] = &unk_27A666410;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __69__ICSAccountSaveErrorHandler__handleInsufficientStorageWithUserInfo___block_invoke(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = objc_alloc_init(ICSCloudStorageOffersManager);
  v2 = [*(a1 + 32) objectForKey:*MEMORY[0x277CEC6B0]];
  v3 = v8[5];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v5 = [WeakRetained navigationController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__ICSAccountSaveErrorHandler__handleInsufficientStorageWithUserInfo___block_invoke_49;
  v6[3] = &unk_27A666700;
  v6[4] = &v7;
  [v3 presentCloudStorageOffersPageFromNavigationController:v5 requiredStorageThreshold:v2 completionHandler:v6];

  _Block_object_dispose(&v7, 8);
}

void __69__ICSAccountSaveErrorHandler__handleInsufficientStorageWithUserInfo___block_invoke_49(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)_handleManateeErrorForAccount:(id)a3 withDescription:(id)a4 failedDataclasses:(id)a5
{
  v7 = a3;
  v8 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__ICSAccountSaveErrorHandler__handleManateeErrorForAccount_withDescription_failedDataclasses___block_invoke;
  block[3] = &unk_27A666728;
  v12 = v8;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __94__ICSAccountSaveErrorHandler__handleManateeErrorForAccount_withDescription_failedDataclasses___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) anyObject];
  v8 = v2;
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v2 = v8;
    if (isKindOfClass)
    {
      v5 = objc_loadWeakRetained((*(a1 + 40) + 8));
      v6 = [v5 specifierForID:v8];

      v7 = objc_loadWeakRetained((*(a1 + 40) + 8));
      [v7 startSpinnerInSpecifier:v6];

      v2 = v8;
    }
  }

  [*(a1 + 40) _beginManateeUpgradeForAccount:*(a1 + 48) failedDataclassName:v2];
}

- (void)_beginManateeUpgradeForAccount:(id)a3 failedDataclassName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CFDAE8]);
  v9 = [v6 aa_altDSID];
  v10 = [v8 initWithAltDSID:v9];

  [v10 setDeviceToDeviceEncryptionUpgradeUIStyle:0];
  [v10 setDeviceToDeviceEncryptionUpgradeType:0];
  if ([v7 isEqualToString:*MEMORY[0x277CB89D8]])
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"UPGRADE_ACCOUNT_SECURITY_FEATURE_MESSAGES" value:&stru_288487370 table:@"Localizable-AppleID"];
    [v10 setFeatureName:v12];
  }

  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  [v10 setPresentingViewController:WeakRetained];

  v14 = [objc_alloc(MEMORY[0x277CFDAF0]) initWithContext:v10];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__ICSAccountSaveErrorHandler__beginManateeUpgradeForAccount_failedDataclassName___block_invoke;
  v17[3] = &unk_27A666778;
  v17[4] = self;
  v18 = v7;
  v19 = v6;
  v15 = v6;
  v16 = v7;
  [v14 performDeviceToDeviceEncryptionStateRepairWithCompletion:v17];
}

void __81__ICSAccountSaveErrorHandler__beginManateeUpgradeForAccount_failedDataclassName___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v8 stopSpinnerInActiveSpecifier];
  }

  if ((a2 & 1) == 0)
  {
    v14 = LogSubsystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __81__ICSAccountSaveErrorHandler__beginManateeUpgradeForAccount_failedDataclassName___block_invoke_cold_1();
    }

    v15 = [v5 domain];
    if ([v15 isEqualToString:*MEMORY[0x277CFD418]])
    {
      v16 = [v5 code] == 5900;
    }

    else
    {
      v16 = 0;
    }

    if ([MEMORY[0x277CE4560] isInternalBuild] && objc_msgSend(v5, "code") != -5307)
    {
      if ([v5 code] == -5308 && !v16)
      {
        goto LABEL_22;
      }
    }

    else if (!v16)
    {
      goto LABEL_22;
    }

    v17 = MEMORY[0x277CCACA8];
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = v20;
    if (v19)
    {
      v22 = [v20 localizedStringForKey:@"HSA2_UPGRADE_FAILURE_MESSAGE" value:&stru_288487370 table:@"Localizable-AppleID"];
      v23 = *(a1 + 32);
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:*(a1 + 40) value:&stru_288487370 table:@"Localizable-AppleID"];
      v26 = [*(a1 + 48) aa_formattedUsername];
      v9 = [v17 stringWithFormat:v22, v25, v26];

      v27 = MEMORY[0x277CCACA8];
      v28 = *(a1 + 32);
      v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v30 = [v29 localizedStringForKey:@"HSA2_UPGRADE_FAILURE_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
      v31 = *(a1 + 32);
      v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v33 = [v32 localizedStringForKey:*(a1 + 40) value:&stru_288487370 table:@"Localizable-AppleID"];
      v34 = [v27 stringWithFormat:v30, v33];
    }

    else
    {
      v35 = [v20 localizedStringForKey:@"HSA2_UPGRADE_FAILURE_MESSAGE_NO_FEATURE" value:&stru_288487370 table:@"Localizable-AppleID"];
      v36 = [*(a1 + 48) aa_formattedUsername];
      v9 = [v17 stringWithFormat:v35, v36];

      v37 = MEMORY[0x277CCACA8];
      v38 = *(a1 + 32);
      v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v30 = [v29 localizedStringForKey:@"HSA2_UPGRADE_FAILURE_TITLE_NO_FEATURE" value:&stru_288487370 table:@"Localizable-AppleID"];
      v34 = [v37 stringWithFormat:v30];
    }

    v39 = MEMORY[0x277D750F8];
    v40 = *(a1 + 32);
    v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v42 = [v41 localizedStringForKey:@"LEARN_MORE" value:&stru_288487370 table:@"Localizable-AppleID"];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __81__ICSAccountSaveErrorHandler__beginManateeUpgradeForAccount_failedDataclassName___block_invoke_83;
    v44[3] = &unk_27A666750;
    v44[4] = *(a1 + 32);
    v43 = [v39 actionWithTitle:v42 style:0 handler:v44];

    [*(a1 + 32) _displayAccountSaveErrorAlertWithTitle:v34 message:v9 alternativeAction:v43];
    goto LABEL_21;
  }

  if (*(a1 + 40))
  {
    v9 = [*(a1 + 48) copy];
    [v9 reload];
    [v9 setEnabled:1 forDataclass:*(a1 + 40)];
    v10 = objc_loadWeakRetained((*(a1 + 32) + 8));
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      v12 = objc_loadWeakRetained((*(a1 + 32) + 8));
      v13 = [v12 accountOperationsHelper];
      [v13 saveAccount:v9 requireVerification:0];
    }

LABEL_21:
  }

LABEL_22:
}

void __81__ICSAccountSaveErrorHandler__beginManateeUpgradeForAccount_failedDataclassName___block_invoke_83(uint64_t a1)
{
  v7 = [MEMORY[0x277D75128] sharedApplication];
  v2 = MEMORY[0x277CBEBC0];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"HSA2_UPGRADE_FAILURE_ARTICLE_PATH" value:&stru_288487370 table:@"Localizable-AppleID"];
  v6 = [v2 URLWithString:v5];
  [v7 openURL:v6 withCompletionHandler:0];
}

- (void)_handleMaxTierAndInsufficientStorageErrorWithFailedDataclasses:(id)a3
{
  v15 = a3;
  v4 = [v15 count];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v4)
  {
    v7 = [v15 anyObject];
    v8 = [v6 localizedStringForKey:v7 value:&stru_288487370 table:@"Localizable-AppleID"];

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"MAX_TIER_AND_INSUFFICIENT_STORAGE_ALERT_MESSAGE" value:&stru_288487370 table:@"Localizable-AppleID"];
    v12 = [v9 stringWithFormat:v11, v8];

    v6 = v8;
  }

  else
  {
    v12 = [v5 localizedStringForKey:@"MAX_TIER_AND_INSUFFICIENT_STORAGE_ALERT_MESSAGE_NO_FEATURE" value:&stru_288487370 table:@"Localizable-AppleID"];
  }

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"MAX_TIER_AND_INSUFFICIENT_STORAGE_ALERT_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  [(ICSAccountSaveErrorHandler *)self _displayAccountSaveErrorAlertWithTitle:v14 message:v12 alternativeAction:0];
}

- (void)_displayAccountSaveErrorAlertWithTitle:(id)a3 message:(id)a4 alternativeAction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__ICSAccountSaveErrorHandler__displayAccountSaveErrorAlertWithTitle_message_alternativeAction___block_invoke;
  v14[3] = &unk_27A6667A0;
  v15 = v9;
  v16 = self;
  v17 = v8;
  v18 = v10;
  v11 = v10;
  v12 = v8;
  v13 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __95__ICSAccountSaveErrorHandler__displayAccountSaveErrorAlertWithTitle_message_alternativeAction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ([MEMORY[0x277CE4560] isInternalBuild])
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"ACCOUNT_SAVE_ERROR_INTERNAL_MESSAGE" value:&stru_288487370 table:@"Localizable-AppleID"];
    v7 = [v4 stringByAppendingFormat:@"\n%@", v6];

    v8 = MEMORY[0x277D750F8];
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"TAP_TO_RADAR_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __95__ICSAccountSaveErrorHandler__displayAccountSaveErrorAlertWithTitle_message_alternativeAction___block_invoke_2;
    v20[3] = &unk_27A666750;
    v21 = *(a1 + 48);
    v12 = [v8 actionWithTitle:v11 style:0 handler:v20];

    v2 = v7;
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x277D75110] alertWithTitle:*(a1 + 48) message:v2];
  v14 = MEMORY[0x277D750F8];
  v15 = *(a1 + 40);
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"OK" value:&stru_288487370 table:@"Localizable-AppleID"];
  v18 = [v14 actionWithTitle:v17 style:1 handler:0];
  [v13 addAction:v18];

  if (v12)
  {
    [v13 addAction:v12];
  }

  if (*(a1 + 56))
  {
    [v13 addAction:?];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  [WeakRetained presentViewController:v13 animated:1 completion:0];
}

- (void)handleAccountSaveError:forAccount:failedDataclasses:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __81__ICSAccountSaveErrorHandler__beginManateeUpgradeForAccount_failedDataclassName___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end
@interface PSAccountSecurityController
- (PSAccountSecurityController)init;
- (id)passcodeSpecifiers;
- (id)specifiers;
- (void)_setShowsDoneButton:(BOOL)a3;
- (void)_showSecurityCodeChangeSheetOnSpecifier:(id)a3;
- (void)cancelPressed;
- (void)changeSecurityCode:(id)a3;
- (void)disableRecovery;
- (void)handleBurnedRecord;
- (void)keychainSyncController:(id)a3 didFinishWithResult:(id)a4 error:(id)a5;
- (void)navCancelPressed;
- (void)navDonePressed;
- (void)phoneSettingsFragment:(id)a3 didChangePhoneNumber:(id)a4 countryInfo:(id)a5;
- (void)reloadSpecifiers;
- (void)setUseRecovery:(id)a3 specifier:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PSAccountSecurityController

- (PSAccountSecurityController)init
{
  v6.receiver = self;
  v6.super_class = PSAccountSecurityController;
  v2 = [(PSListController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PSKeychainSyncManager);
    manager = v2->_manager;
    v2->_manager = v3;
  }

  return v2;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(KeychainSyncPhoneSettingsFragment *)self->_phoneSettingsFragment resignFirstResponder];
  v5.receiver = self;
  v5.super_class = PSAccountSecurityController;
  [(PSListController *)&v5 viewWillDisappear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PSAccountSecurityController;
  [(PSListController *)&v6 viewDidAppear:a3];
  if ([(PSAccountSecurityController *)self isMovingToParentViewController])
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__PSAccountSecurityController_viewDidAppear___block_invoke;
    block[3] = &unk_1E71DBE20;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

void __45__PSAccountSecurityController_viewDidAppear___block_invoke(uint64_t a1)
{
  v2 = PSSecureBackupAccountInfo(0, 0);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v3 = getkSecureBackupRecordStatusKeySymbolLoc_ptr;
  v24 = getkSecureBackupRecordStatusKeySymbolLoc_ptr;
  if (!getkSecureBackupRecordStatusKeySymbolLoc_ptr)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getkSecureBackupRecordStatusKeySymbolLoc_block_invoke;
    v19 = &unk_1E71DBC78;
    v20 = &v21;
    v4 = CloudServicesLibrary_0();
    v22[3] = dlsym(v4, "kSecureBackupRecordStatusKey");
    getkSecureBackupRecordStatusKeySymbolLoc_ptr = *(v20[1] + 24);
    v3 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v3)
  {
    [PSContactsAuthorizationLevelController dealloc];
LABEL_16:
    [PSContactsAuthorizationLevelController dealloc];
    goto LABEL_17;
  }

  v5 = *v3;
  v6 = [v2 objectForKey:v5];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v7 = getkSecureBackupRecordStatusInvalidSymbolLoc_ptr;
  v24 = getkSecureBackupRecordStatusInvalidSymbolLoc_ptr;
  if (!getkSecureBackupRecordStatusInvalidSymbolLoc_ptr)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getkSecureBackupRecordStatusInvalidSymbolLoc_block_invoke;
    v19 = &unk_1E71DBC78;
    v20 = &v21;
    v8 = CloudServicesLibrary_0();
    v22[3] = dlsym(v8, "kSecureBackupRecordStatusInvalid");
    getkSecureBackupRecordStatusInvalidSymbolLoc_ptr = *(v20[1] + 24);
    v7 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v7)
  {
    goto LABEL_16;
  }

  v9 = *v7;
  if ([v6 isEqualToString:v9])
  {

LABEL_13:
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __45__PSAccountSecurityController_viewDidAppear___block_invoke_2;
    v15[3] = &unk_1E71DBE20;
    v15[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v15);
    goto LABEL_14;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v10 = getkSecureBackupEscrowTrustStatusKeySymbolLoc_ptr;
  v24 = getkSecureBackupEscrowTrustStatusKeySymbolLoc_ptr;
  if (!getkSecureBackupEscrowTrustStatusKeySymbolLoc_ptr)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getkSecureBackupEscrowTrustStatusKeySymbolLoc_block_invoke;
    v19 = &unk_1E71DBC78;
    v20 = &v21;
    v11 = CloudServicesLibrary_0();
    v22[3] = dlsym(v11, "kSecureBackupEscrowTrustStatusKey");
    getkSecureBackupEscrowTrustStatusKeySymbolLoc_ptr = *(v20[1] + 24);
    v10 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v10)
  {
LABEL_17:
    v14 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v21, 8);
    _Unwind_Resume(v14);
  }

  v12 = [v2 objectForKey:*v10];
  v13 = [v12 intValue];

  if (v13 == 2)
  {
    goto LABEL_13;
  }

LABEL_14:
}

- (id)passcodeSpecifiers
{
  passcodeSpecifiers = self->_passcodeSpecifiers;
  if (!passcodeSpecifiers)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = +[PSSpecifier emptyGroupSpecifier];
    [(NSArray *)v4 addObject:v5];
    v6 = PS_LocalizedStringForKeychainSync(@"CHANGE_SECURITY_CODE");
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v7 setButtonAction:sel_changeSecurityCode_];
    [(NSArray *)v4 addObject:v7];
    v8 = self->_passcodeSpecifiers;
    self->_passcodeSpecifiers = v4;

    passcodeSpecifiers = self->_passcodeSpecifiers;
  }

  return passcodeSpecifiers;
}

- (id)specifiers
{
  specifiers = self->super._specifiers;
  if (!specifiers)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__PSAccountSecurityController_specifiers__block_invoke;
    block[3] = &unk_1E71DBE20;
    block[4] = self;
    dispatch_async(v4, block);

    v5 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
    v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v5, 0}];
    v7 = self->super._specifiers;
    self->super._specifiers = v6;

    specifiers = self->super._specifiers;
  }

  return specifiers;
}

void __41__PSAccountSecurityController_specifiers__block_invoke(uint64_t a1)
{
  v17 = 0;
  v16[1] = 0;
  CircleMembershipStatus = PSKeychainSyncGetCircleMembershipStatus(&v17 + 1, &v17);
  v3 = 0;
  v4 = v3;
  if (CircleMembershipStatus)
  {
    v16[0] = v3;
    v5 = PSSecureBackupAccountInfo(v16, 1);
    v6 = v16[0];

    v4 = v6;
  }

  else
  {
    v5 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PSAccountSecurityController_specifiers__block_invoke_2;
  block[3] = &unk_1E71DCEC0;
  v14 = CircleMembershipStatus;
  v7 = *(a1 + 32);
  v11 = v4;
  v12 = v7;
  v13 = v5;
  v15 = v17;
  v8 = v5;
  v9 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __41__PSAccountSecurityController_specifiers__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = *(a1 + 40);
    v3 = *(v2 + 1496);
    *(v2 + 1496) = 0;

    v4 = *(a1 + 40);
    v5 = *(v4 + 1504);
    *(v4 + 1504) = 0;

    if (*(a1 + 32))
    {
      NSLog(&cfstr_Getaccountstat.isa, *(a1 + 32));
LABEL_27:
      LOBYTE(v15) = 0;
LABEL_28:
      v31 = [MEMORY[0x1E695DF70] array];
      v32 = +[PSSpecifier emptyGroupSpecifier];
      v33 = PS_LocalizedStringForKeychainSync(@"KEYCHAIN_RECOVERY_DESCRIPTION");
      [v32 setProperty:v33 forKey:@"footerText"];

      [v31 addObject:v32];
      v34 = *(a1 + 40);
      v35 = *(v34 + 1456);
      if (!v35)
      {
        v36 = PS_LocalizedStringForKeychainSync(@"KEYCHAIN_RECOVERY");
        v37 = [PSSpecifier preferenceSpecifierNamed:v36 target:*(a1 + 40) set:sel_setUseRecovery_specifier_ get:sel_useRecoveryForSepecifier_ detail:0 cell:6 edit:0];
        v38 = *(a1 + 40);
        v39 = *(v38 + 1456);
        *(v38 + 1456) = v37;

        v34 = *(a1 + 40);
        v35 = *(v34 + 1456);
      }

      if (*(a1 + 57))
      {
        v40 = 1;
      }

      else if (*(a1 + 58))
      {
        v40 = 0;
      }

      else
      {
        v40 = *(v34 + 1512);
      }

      v42 = [MEMORY[0x1E696AD98] numberWithInt:v40];
      [v35 setProperty:v42 forKey:@"enabled"];

      [v31 addObject:*(*(a1 + 40) + 1456)];
      v43 = *(a1 + 40);
      if (*(v43 + 1512) == 1)
      {
        if (*(a1 + 57) == 1)
        {
          v44 = [v43 passcodeSpecifiers];
          [v31 addObjectsFromArray:v44];

          v43 = *(a1 + 40);
          LOBYTE(v15) = *(v43 + 1512) ^ 1 | v15;
        }

        if ((v15 & 1) == 0 && *(a1 + 57) == 1)
        {
          v45 = *(v43 + 1488);
          if (!v45)
          {
            v46 = [[KeychainSyncPhoneSettingsFragment alloc] initWithListController:*(a1 + 40)];
            v47 = *(a1 + 40);
            v48 = *(v47 + 1488);
            *(v47 + 1488) = v46;

            v49 = *(*(a1 + 40) + 1488);
            v50 = PS_LocalizedStringForKeychainSync(@"VERIFICATION_NUMBER");
            [v49 setTitle:v50];

            [*(*(a1 + 40) + 1488) setDelegate:?];
            v45 = *(*(a1 + 40) + 1488);
          }

          v51 = [v45 specifiers];
          [v31 addObjectsFromArray:v51];

          v52 = [*(*(a1 + 40) + 1488) unformattedPhoneNumber];
          v53 = *(a1 + 40);
          v54 = *(v53 + 1496);
          *(v53 + 1496) = v52;

          v55 = [*(*(a1 + 40) + 1488) countryInfo];
          v56 = *(a1 + 40);
          v57 = *(v56 + 1504);
          *(v56 + 1504) = v55;

          v43 = *(a1 + 40);
        }
      }

      [v43 beginUpdates];
      [*(a1 + 40) removeSpecifierAtIndex:0];
      [*(a1 + 40) insertContiguousSpecifiers:v31 atIndex:0];
      [*(a1 + 40) endUpdates];

      return;
    }

    v6 = *(a1 + 48);
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v7 = getkSecureBackupIsEnabledKeySymbolLoc_ptr;
    v63 = getkSecureBackupIsEnabledKeySymbolLoc_ptr;
    if (!getkSecureBackupIsEnabledKeySymbolLoc_ptr)
    {
      v8 = CloudServicesLibrary_0();
      v61[3] = dlsym(v8, "kSecureBackupIsEnabledKey");
      getkSecureBackupIsEnabledKeySymbolLoc_ptr = v61[3];
      v7 = v61[3];
    }

    _Block_object_dispose(&v60, 8);
    if (v7)
    {
      v9 = *v7;
      v10 = [v6 objectForKey:v9];
      *(*(a1 + 40) + 1512) = [v10 BOOLValue];

      if (*(*(a1 + 40) + 1512) != 1)
      {
        goto LABEL_27;
      }

      v11 = *(a1 + 48);
      v60 = 0;
      v61 = &v60;
      v62 = 0x2020000000;
      v12 = getkSecureBackupUsesRandomPassphraseKeySymbolLoc_ptr;
      v63 = getkSecureBackupUsesRandomPassphraseKeySymbolLoc_ptr;
      if (!getkSecureBackupUsesRandomPassphraseKeySymbolLoc_ptr)
      {
        v13 = CloudServicesLibrary_0();
        v61[3] = dlsym(v13, "kSecureBackupUsesRandomPassphraseKey");
        getkSecureBackupUsesRandomPassphraseKeySymbolLoc_ptr = v61[3];
        v12 = v61[3];
      }

      _Block_object_dispose(&v60, 8);
      if (v12)
      {
        v14 = [v11 objectForKey:*v12];
        v15 = [v14 BOOLValue];

        v16 = *(a1 + 48);
        v17 = getkSecureBackupMetadataKey();
        v18 = [v16 objectForKey:v17];
        v60 = 0;
        v61 = &v60;
        v62 = 0x2020000000;
        v19 = getkSecureBackupUsesComplexPassphraseKeySymbolLoc_ptr;
        v63 = getkSecureBackupUsesComplexPassphraseKeySymbolLoc_ptr;
        if (!getkSecureBackupUsesComplexPassphraseKeySymbolLoc_ptr)
        {
          v20 = CloudServicesLibrary_0();
          v61[3] = dlsym(v20, "kSecureBackupUsesComplexPassphraseKey");
          getkSecureBackupUsesComplexPassphraseKeySymbolLoc_ptr = v61[3];
          v19 = v61[3];
        }

        _Block_object_dispose(&v60, 8);
        if (v19)
        {
          v21 = [v18 objectForKey:*v19];
          v22 = [v21 BOOLValue];

          v23 = *(a1 + 48);
          v24 = getkSecureBackupMetadataKey();
          v25 = [v23 objectForKey:v24];
          v60 = 0;
          v61 = &v60;
          v62 = 0x2020000000;
          v26 = getkSecureBackupUsesNumericPassphraseKeySymbolLoc_ptr;
          v63 = getkSecureBackupUsesNumericPassphraseKeySymbolLoc_ptr;
          if (!getkSecureBackupUsesNumericPassphraseKeySymbolLoc_ptr)
          {
            v27 = CloudServicesLibrary_0();
            v61[3] = dlsym(v27, "kSecureBackupUsesNumericPassphraseKey");
            getkSecureBackupUsesNumericPassphraseKeySymbolLoc_ptr = v61[3];
            v26 = v61[3];
          }

          _Block_object_dispose(&v60, 8);
          if (v26)
          {
            v28 = [v25 objectForKey:*v26];
            v29 = [v28 BOOLValue];

            if (v15)
            {
              v30 = 2;
            }

            else
            {
              v30 = (v29 ^ 1) & v22;
            }

            [*(a1 + 40) setSecurityCodeType:v30];
            goto LABEL_28;
          }

LABEL_50:
          v58 = [PSContactsAuthorizationLevelController dealloc];
          _Block_object_dispose(&v60, 8);
          _Unwind_Resume(v58);
        }

LABEL_49:
        [PSContactsAuthorizationLevelController dealloc];
        goto LABEL_50;
      }
    }

    else
    {
      [PSContactsAuthorizationLevelController dealloc];
    }

    [PSContactsAuthorizationLevelController dealloc];
    goto LABEL_49;
  }

  v59 = [*(a1 + 32) domain];
  if ([v59 isEqualToString:*MEMORY[0x1E697AB38]])
  {
    if ([*(a1 + 32) code] == 1)
    {
    }

    else
    {
      v41 = [*(a1 + 32) code];

      if (v41 != 2)
      {
        return;
      }
    }

    [*(*(a1 + 40) + 1520) promptForPasswordOverController:? withCompletion:?];
    return;
  }
}

void __41__PSAccountSecurityController_specifiers__block_invoke_3(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {

    [v3 reloadSpecifiers];
  }

  else
  {
    v5 = [v3 navigationController];
    v4 = [v5 popViewControllerAnimated:1];
  }
}

- (void)reloadSpecifiers
{
  [(KeychainSyncPhoneSettingsFragment *)self->_phoneSettingsFragment reloadSpecifiers];
  v3.receiver = self;
  v3.super_class = PSAccountSecurityController;
  [(PSListController *)&v3 reloadSpecifiers];
  [(PSAccountSecurityController *)self _setShowsDoneButton:0];
}

- (void)_showSecurityCodeChangeSheetOnSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(PSAccountSecurityController *)self securityCodeType];
  manager = self->_manager;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__PSAccountSecurityController__showSecurityCodeChangeSheetOnSpecifier___block_invoke;
  v7[3] = &unk_1E71DCEE8;
  v8 = v5 == 2;
  v7[4] = self;
  [(PSKeychainSyncManager *)manager showChangeSecurityCodeFlowWithSpecifier:v4 overController:self completion:v7];
}

void __71__PSAccountSecurityController__showSecurityCodeChangeSheetOnSpecifier___block_invoke(uint64_t a1, int a2, void *a3, int a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  if (a2)
  {
    if (a4 == 2 || (*(a1 + 40) & 1) != 0)
    {
      [*(a1 + 32) reloadSpecifiers];
      if (a4 == 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v26.receiver = *(a1 + 32);
      v26.super_class = PSAccountSecurityController;
      objc_msgSendSuper2(&v26, sel_reloadSpecifiers);
    }

    if (PSIsUsingPasscode(0))
    {
      v11 = [MEMORY[0x1E69ADFB8] sharedConnection];
      if ([v11 passcode:v9 meetsCurrentConstraintsOutError:0])
      {
        [*(a1 + 32) setSecurityCode:v9];
        v12 = MEMORY[0x1E69DC650];
        v13 = PS_LocalizedStringForKeychainSync(@"USE_SECURITY_CODE_AS_DEVICE_PASSCODE");
        v14 = [v12 alertControllerWithTitle:v13 message:0 preferredStyle:1];

        v15 = MEMORY[0x1E69DC648];
        v16 = PS_LocalizedStringForKeychainSync(@"DONT_CHANGE_PASSCODE");
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __71__PSAccountSecurityController__showSecurityCodeChangeSheetOnSpecifier___block_invoke_2;
        v25[3] = &unk_1E71DC288;
        v25[4] = *(a1 + 32);
        v17 = [v15 actionWithTitle:v16 style:1 handler:v25];
        [v14 addAction:v17];

        v18 = MEMORY[0x1E69DC648];
        v19 = PS_LocalizedStringForKeychainSync(@"USE_SAME_CODE_ICSC_TO_DEVICE");
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __71__PSAccountSecurityController__showSecurityCodeChangeSheetOnSpecifier___block_invoke_3;
        v24[3] = &unk_1E71DC288;
        v24[4] = *(a1 + 32);
        v20 = [v18 actionWithTitle:v19 style:0 handler:v24];
        [v14 addAction:v20];

        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __71__PSAccountSecurityController__showSecurityCodeChangeSheetOnSpecifier___block_invoke_4;
        v22[3] = &unk_1E71DC570;
        v22[4] = *(a1 + 32);
        v23 = v14;
        v21 = v14;
        dispatch_async(MEMORY[0x1E69E96A0], v22);
      }
    }
  }

LABEL_10:
}

void __71__PSAccountSecurityController__showSecurityCodeChangeSheetOnSpecifier___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc_init(PSSetupController);
  v3 = *(a1 + 32);
  v4 = *(v3 + 1472);
  *(v3 + 1472) = v2;

  v5 = *(*(a1 + 32) + 1008);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 setProperty:v7 forKey:@"customControllerClass"];

  [*(*(a1 + 32) + 1472) setSpecifier:*(*(a1 + 32) + 1008)];
  [*(*(a1 + 32) + 1472) setParentController:?];
  [*(*(a1 + 32) + 1472) setupController];
  v8 = [*(*(a1 + 32) + 1472) viewControllers];
  v9 = [v8 firstObject];
  v10 = *(a1 + 32);
  v11 = *(v10 + 1480);
  *(v10 + 1480) = v9;

  [*(*(a1 + 32) + 1480) setDelegate:?];
  v12 = *(*(a1 + 32) + 1480);
  v13 = PS_LocalizedStringForKeychainSync(@"ENTER_CURRENT_PASSCODE");
  [v12 setEnterPasscodeTitle:v13];

  v14 = *(*(a1 + 32) + 1480);
  v15 = PS_LocalizedStringForKeychainSync(@"ENTER_CURRENT_PASSCODE_DESCRIPTION");
  [v14 setEnterPasscodeReason:v15];

  v17 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:*(a1 + 32) action:sel_cancelPressed];
  v16 = [*(*(a1 + 32) + 1480) navigationItem];
  [v16 setLeftBarButtonItem:v17];

  [*(a1 + 32) presentViewController:*(*(a1 + 32) + 1472) animated:1 completion:0];
}

- (void)changeSecurityCode:(id)a3
{
  phoneSettingsFragment = self->_phoneSettingsFragment;
  v6 = a3;
  v5 = [(KeychainSyncPhoneSettingsFragment *)phoneSettingsFragment phoneNumberCell];
  [v5 resignFirstResponder];

  [(PSAccountSecurityController *)self _showSecurityCodeChangeSheetOnSpecifier:v6];
}

- (void)disableRecovery
{
  v3 = objc_alloc_init(getSecureBackupClass());
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__PSAccountSecurityController_disableRecovery__block_invoke;
  v4[3] = &unk_1E71DC1E8;
  v4[4] = self;
  [v3 disableWithInfo:0 completionBlock:v4];
}

void __46__PSAccountSecurityController_disableRecovery__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PSAccountSecurityController_disableRecovery__block_invoke_2;
  v6[3] = &unk_1E71DC570;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __46__PSAccountSecurityController_disableRecovery__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    NSLog(&cfstr_FailedToDisabl.isa, *(a1 + 32));
    v2 = MEMORY[0x1E69DC650];
    v3 = PS_LocalizedStringForKeychainSync(@"DISABLE_BACKUP_KEYCHAIN_ERROR_TITLE");
    v12 = [v2 alertControllerWithTitle:v3 message:0 preferredStyle:1];

    v4 = MEMORY[0x1E69DC648];
    v5 = PS_LocalizedStringForKeychainSync(@"OK");
    v6 = [v4 actionWithTitle:v5 style:0 handler:0];
    [v12 addAction:v6];

    [*(a1 + 40) presentViewController:v12 animated:1 completion:0];
    [*(a1 + 40) reloadSpecifier:*(*(a1 + 40) + 1456) animated:1];
  }

  else
  {
    *(*(a1 + 40) + 1512) = 0;
    v13 = 0;
    if (PSKeychainSyncGetCircleMembershipStatus(0, &v13))
    {
      v7 = *(*(a1 + 40) + 1456);
      v8 = [MEMORY[0x1E696AD98] numberWithBool:v13];
      [v7 setProperty:v8 forKey:@"enabled"];
    }

    v9 = *(a1 + 40);
    if (v9[183])
    {
      [v9 beginUpdates];
      [*(a1 + 40) reloadSpecifier:*(*(a1 + 40) + 1456)];
      v10 = *(a1 + 40);
      v11 = [v10[186] specifiers];
      [v10 removeContiguousSpecifiers:v11 animated:1];

      [*(a1 + 40) removeContiguousSpecifiers:*(*(a1 + 40) + 1464) animated:1];
      [*(a1 + 40) endUpdates];
    }

    else
    {
      [v9 reloadSpecifier:v9[182] animated:1];
    }

    [*(a1 + 40) _setShowsDoneButton:0];
  }
}

- (void)setUseRecovery:(id)a3 specifier:(id)a4
{
  v6 = a4;
  if ([a3 BOOLValue])
  {
    manager = self->_manager;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __56__PSAccountSecurityController_setUseRecovery_specifier___block_invoke;
    v20[3] = &unk_1E71DCF10;
    v20[4] = self;
    [(PSKeychainSyncManager *)manager showEnableEscrowFlowWithSpecifier:v6 overController:self completion:v20];
  }

  else
  {
    v8 = MEMORY[0x1E69DC650];
    v9 = PS_LocalizedStringForKeychainSync(@"DONT_USE_SECURITY_CODE");
    v10 = PS_LocalizedStringForKeychainSync(@"DISABLE_RECOVERY_DESCRIPTION");
    v11 = [v8 alertControllerWithTitle:v9 message:v10 preferredStyle:1];

    v12 = MEMORY[0x1E69DC648];
    v13 = PS_LocalizedStringForKeychainSync(@"CANCEL");
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __56__PSAccountSecurityController_setUseRecovery_specifier___block_invoke_2;
    v19[3] = &unk_1E71DC288;
    v19[4] = self;
    v14 = [v12 actionWithTitle:v13 style:1 handler:v19];
    [v11 addAction:v14];

    v15 = MEMORY[0x1E69DC648];
    v16 = PS_LocalizedStringForKeychainSync(@"DONT_USE");
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__PSAccountSecurityController_setUseRecovery_specifier___block_invoke_3;
    v18[3] = &unk_1E71DC288;
    v18[4] = self;
    v17 = [v15 actionWithTitle:v16 style:0 handler:v18];
    [v11 addAction:v17];

    [(PSAccountSecurityController *)self presentViewController:v11 animated:1 completion:0];
  }
}

- (void)handleBurnedRecord
{
  [(PSKeychainSyncManager *)self->_manager startNavigationSpinnerInViewController:self];
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PSAccountSecurityController_handleBurnedRecord__block_invoke;
  block[3] = &unk_1E71DBE20;
  block[4] = self;
  dispatch_async(v3, block);
}

void __49__PSAccountSecurityController_handleBurnedRecord__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(getSecureBackupClass());
  v3 = [v2 disableWithInfo:0];
  NSLog(&cfstr_ErrorDisabling.isa, v3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PSAccountSecurityController_handleBurnedRecord__block_invoke_2;
  block[3] = &unk_1E71DBE20;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __49__PSAccountSecurityController_handleBurnedRecord__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  [*(*(a1 + 32) + 1520) stopNavigationSpinner];
  v2 = *(a1 + 32);
  v3 = v2[190];
  v4 = [v2 specifier];
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __49__PSAccountSecurityController_handleBurnedRecord__block_invoke_3;
  v9 = &unk_1E71DCF10;
  v10 = v5;
  [v3 showEnableEscrowFlowWithSpecifier:v4 overController:? completion:?];
}

- (void)keychainSyncController:(id)a3 didFinishWithResult:(id)a4 error:(id)a5
{
  v7 = a4;
  if (self->_devicePINController == a3)
  {
    [(PSKeychainSyncManager *)self->_manager startNavigationSpinnerInViewController:a3];
    v8 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v9 = [(PSAccountSecurityController *)self securityCode];
    v20 = 0;
    v10 = [v8 changePasscodeFrom:v7 to:v9 outError:&v20];
    v11 = v20;

    if (v10)
    {
      v12 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
      [v12 saveDeviceUnlockPasscodeInputModes];
    }

    else
    {
      NSLog(&cfstr_ErrorChangingP.isa, v11);
      v13 = MEMORY[0x1E69DC650];
      v14 = PS_LocalizedStringForKeychainSync(@"ERROR_CHANGING_PASSCODE");
      v12 = [v13 alertControllerWithTitle:v14 message:0 preferredStyle:1];

      v15 = MEMORY[0x1E69DC648];
      v16 = PS_LocalizedStringForKeychainSync(@"OK");
      v17 = [v15 actionWithTitle:v16 style:0 handler:0];
      [v12 addAction:v17];

      [(PSAccountSecurityController *)self presentViewController:v12 animated:1 completion:0];
    }

    [(PSKeychainSyncManager *)self->_manager stopNavigationSpinner];
    v18 = [(PSViewController *)self rootController];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__PSAccountSecurityController_keychainSyncController_didFinishWithResult_error___block_invoke;
    v19[3] = &unk_1E71DBE20;
    v19[4] = self;
    [v18 dismissViewControllerAnimated:1 completion:v19];
  }
}

void __80__PSAccountSecurityController_keychainSyncController_didFinishWithResult_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSecurityCode:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1480);
  *(v2 + 1480) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 1472);
  *(v4 + 1472) = 0;
}

void __51__PSAccountSecurityController_saveSMSTargetChanges__block_invoke(uint64_t a1, int a2, void *a3)
{
  v74[5] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [*(*(a1 + 32) + 1488) unformattedPhoneNumber];
    v7 = [*(*(a1 + 32) + 1488) countryInfo];
    v62 = 0;
    CircleMembershipStatus = PSKeychainSyncGetCircleMembershipStatus(&v62 + 1, &v62);
    v9 = 0;
    v10 = v9;
    if (!CircleMembershipStatus)
    {
      NSLog(&cfstr_FailedToSetNew.isa, v9);
LABEL_28:

      goto LABEL_29;
    }

    if (HIBYTE(v62) != 1 || v62 != 1)
    {
      goto LABEL_28;
    }

    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v11 = getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_ptr_0;
    v71 = getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_ptr_0;
    if (!getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_ptr_0)
    {
      v63 = MEMORY[0x1E69E9820];
      v64 = 3221225472;
      v65 = __getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_block_invoke_0;
      v66 = &unk_1E71DBC78;
      v67 = &v68;
      v12 = CloudServicesLibrary_0();
      v13 = dlsym(v12, "kSecureBackupSMSTargetPhoneNumberKey");
      *(v67[1] + 24) = v13;
      getkSecureBackupSMSTargetPhoneNumberKeySymbolLoc_ptr_0 = *(v67[1] + 24);
      v11 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (v11)
    {
      v56 = *v11;
      v74[0] = v6;
      v68 = 0;
      v69 = &v68;
      v70 = 0x2020000000;
      v14 = getkSecureBackupCountryDialCodeKeySymbolLoc_ptr_0;
      v71 = getkSecureBackupCountryDialCodeKeySymbolLoc_ptr_0;
      v72[0] = v56;
      if (!getkSecureBackupCountryDialCodeKeySymbolLoc_ptr_0)
      {
        v63 = MEMORY[0x1E69E9820];
        v64 = 3221225472;
        v65 = __getkSecureBackupCountryDialCodeKeySymbolLoc_block_invoke_0;
        v66 = &unk_1E71DBC78;
        v67 = &v68;
        v15 = CloudServicesLibrary_0();
        v16 = dlsym(v15, "kSecureBackupCountryDialCodeKey");
        *(v67[1] + 24) = v16;
        getkSecureBackupCountryDialCodeKeySymbolLoc_ptr_0 = *(v67[1] + 24);
        v14 = v69[3];
      }

      _Block_object_dispose(&v68, 8);
      if (v14)
      {
        v55 = *v14;
        v72[1] = v55;
        v60 = [v7 dialingPrefix];
        v74[1] = v60;
        v68 = 0;
        v69 = &v68;
        v70 = 0x2020000000;
        v17 = getkSecureBackupCountryCodeKeySymbolLoc_ptr_0;
        v71 = getkSecureBackupCountryCodeKeySymbolLoc_ptr_0;
        if (!getkSecureBackupCountryCodeKeySymbolLoc_ptr_0)
        {
          v63 = MEMORY[0x1E69E9820];
          v64 = 3221225472;
          v65 = __getkSecureBackupCountryCodeKeySymbolLoc_block_invoke_0;
          v66 = &unk_1E71DBC78;
          v67 = &v68;
          v18 = CloudServicesLibrary_0();
          v19 = dlsym(v18, "kSecureBackupCountryCodeKey");
          *(v67[1] + 24) = v19;
          getkSecureBackupCountryCodeKeySymbolLoc_ptr_0 = *(v67[1] + 24);
          v17 = v69[3];
        }

        _Block_object_dispose(&v68, 8);
        if (v17)
        {
          v54 = *v17;
          v72[2] = v54;
          v58 = [v7 countryCode];
          v74[2] = v58;
          v68 = 0;
          v69 = &v68;
          v70 = 0x2020000000;
          v20 = getkSecureBackupAuthenticationAppleIDSymbolLoc_ptr;
          v71 = getkSecureBackupAuthenticationAppleIDSymbolLoc_ptr;
          if (!getkSecureBackupAuthenticationAppleIDSymbolLoc_ptr)
          {
            v63 = MEMORY[0x1E69E9820];
            v64 = 3221225472;
            v65 = __getkSecureBackupAuthenticationAppleIDSymbolLoc_block_invoke;
            v66 = &unk_1E71DBC78;
            v67 = &v68;
            v21 = CloudServicesLibrary_0();
            v22 = dlsym(v21, "kSecureBackupAuthenticationAppleID");
            *(v67[1] + 24) = v22;
            getkSecureBackupAuthenticationAppleIDSymbolLoc_ptr = *(v67[1] + 24);
            v20 = v69[3];
          }

          _Block_object_dispose(&v68, 8);
          if (v20)
          {
            v23 = *v20;
            v72[3] = v23;
            v24 = [*(*(a1 + 32) + 1520) appleIDUsername];
            v74[3] = v24;
            v68 = 0;
            v69 = &v68;
            v70 = 0x2020000000;
            v25 = getkSecureBackupAuthenticationPasswordSymbolLoc_ptr;
            v71 = getkSecureBackupAuthenticationPasswordSymbolLoc_ptr;
            if (!getkSecureBackupAuthenticationPasswordSymbolLoc_ptr)
            {
              v63 = MEMORY[0x1E69E9820];
              v64 = 3221225472;
              v65 = __getkSecureBackupAuthenticationPasswordSymbolLoc_block_invoke;
              v66 = &unk_1E71DBC78;
              v67 = &v68;
              v26 = CloudServicesLibrary_0();
              v27 = dlsym(v26, "kSecureBackupAuthenticationPassword");
              *(v67[1] + 24) = v27;
              getkSecureBackupAuthenticationPasswordSymbolLoc_ptr = *(v67[1] + 24);
              v25 = v69[3];
            }

            _Block_object_dispose(&v68, 8);
            if (v25)
            {
              v73 = *v25;
              v28 = *(*(a1 + 32) + 1520);
              v29 = v73;
              v30 = [v28 appleIDPasswordOrEquivalentToken];
              v74[4] = v30;
              v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v72 count:5];

              v61 = objc_alloc_init(getSecureBackupClass());
              v31 = [v61 changeSMSTargetWithInfo:v57];
              v32 = v31;
              if (!v31)
              {
                v38 = [*(a1 + 32) navigationController];
                v48 = [v38 popViewControllerAnimated:1];
                goto LABEL_33;
              }

              NSLog(&cfstr_FailedToChange.isa, v31);
              v33 = [v32 domain];
              v68 = 0;
              v69 = &v68;
              v70 = 0x2020000000;
              v34 = getkSecureBackupErrorDomainSymbolLoc_ptr;
              v71 = getkSecureBackupErrorDomainSymbolLoc_ptr;
              if (!getkSecureBackupErrorDomainSymbolLoc_ptr)
              {
                v63 = MEMORY[0x1E69E9820];
                v64 = 3221225472;
                v65 = __getkSecureBackupErrorDomainSymbolLoc_block_invoke;
                v66 = &unk_1E71DBC78;
                v67 = &v68;
                v35 = CloudServicesLibrary_0();
                v36 = dlsym(v35, "kSecureBackupErrorDomain");
                *(v67[1] + 24) = v36;
                getkSecureBackupErrorDomainSymbolLoc_ptr = *(v67[1] + 24);
                v34 = v69[3];
              }

              _Block_object_dispose(&v68, 8);
              if (v34)
              {
                if ([v33 isEqualToString:*v34])
                {
                  v37 = [v32 code] == 29;

                  if (v37)
                  {
                    v38 = [PSKeychainSyncPhoneNumber phoneNumberWithDigits:v6 countryInfo:v7];
                    v39 = MEMORY[0x1E696AEC0];
                    v40 = PS_LocalizedStringForKeychainSync(@"INVALID_PHONE_NUMBER");
                    v41 = [v38 formattedStringWithDialingPrefix];
                    v59 = [v39 stringWithFormat:v40, v41];

                    v42 = MEMORY[0x1E69DC650];
                    v43 = PS_LocalizedStringForKeychainSync(@"KEYCHAIN_VERIFICATION");
                    v44 = [v42 alertControllerWithTitle:v43 message:v59 preferredStyle:1];

                    v45 = MEMORY[0x1E69DC648];
                    v46 = PS_LocalizedStringForKeychainSync(@"OK");
                    v47 = [v45 actionWithTitle:v46 style:0 handler:0];
                    [v44 addAction:v47];

                    [*(a1 + 32) presentViewController:v44 animated:1 completion:0];
LABEL_33:

                    goto LABEL_28;
                  }
                }

                else
                {
                }

                v49 = MEMORY[0x1E69DC650];
                v50 = PS_LocalizedStringForKeychainSync(@"FAILED_TO_CHANGE_PHONE_NUMBER");
                v38 = [v49 alertControllerWithTitle:v50 message:0 preferredStyle:1];

                v51 = MEMORY[0x1E69DC648];
                v52 = PS_LocalizedStringForKeychainSync(@"OK");
                v53 = [v51 actionWithTitle:v52 style:0 handler:0];
                [v38 addAction:v53];

                [*(a1 + 32) presentViewController:v38 animated:1 completion:0];
                goto LABEL_33;
              }
            }
          }
        }
      }
    }

    [PSContactsAuthorizationLevelController dealloc];
    __break(1u);
  }

LABEL_29:
}

- (void)navCancelPressed
{
  v3 = [(PSAccountSecurityController *)self navigationController];
  v2 = [v3 popViewControllerAnimated:1];
}

- (void)navDonePressed
{
  [(KeychainSyncPhoneSettingsFragment *)self->_phoneSettingsFragment resignFirstResponder];

  [(PSAccountSecurityController *)self saveSMSTargetChanges];
}

- (void)_setShowsDoneButton:(BOOL)a3
{
  if (a3)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_navCancelPressed];
    v4 = [(PSAccountSecurityController *)self navigationItem];
    [v4 setLeftBarButtonItem:v8];

    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_navDonePressed];
    v6 = [(PSAccountSecurityController *)self navigationItem];
    [v6 setRightBarButtonItem:v5];
  }

  else
  {
    v7 = [(PSAccountSecurityController *)self navigationItem];
    [v7 setLeftBarButtonItem:0];

    v8 = [(PSAccountSecurityController *)self navigationItem];
    [v8 setRightBarButtonItem:0];
  }
}

- (void)phoneSettingsFragment:(id)a3 didChangePhoneNumber:(id)a4 countryInfo:(id)a5
{
  v13 = a4;
  v7 = a5;
  if ([(NSString *)self->_SMSTarget isEqualToString:v13]&& [(KeychainSyncCountryInfo *)self->_SMSTargetCountryInfo isEqual:v7])
  {
    [(PSAccountSecurityController *)self _setShowsDoneButton:0];
  }

  else
  {
    [(PSAccountSecurityController *)self _setShowsDoneButton:1];
    v8 = [(PSAccountSecurityController *)self navigationItem];
    v9 = [v8 rightBarButtonItem];

    v10 = [v13 length];
    if (v7)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    [v9 setEnabled:v12];
  }
}

- (void)cancelPressed
{
  v3 = [(PSViewController *)self rootController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__PSAccountSecurityController_cancelPressed__block_invoke;
  v4[3] = &unk_1E71DBE20;
  v4[4] = self;
  [v3 dismissViewControllerAnimated:1 completion:v4];
}

void __44__PSAccountSecurityController_cancelPressed__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1472);
  *(v1 + 1472) = 0;
}

@end
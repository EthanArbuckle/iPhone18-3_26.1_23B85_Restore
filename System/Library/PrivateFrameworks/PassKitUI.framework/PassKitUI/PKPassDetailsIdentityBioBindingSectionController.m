@interface PKPassDetailsIdentityBioBindingSectionController
- (PKPassDetailsIdentityBioBindingSectionController)initWithPass:(id)a3 webService:(id)a4 delegate:(id)a5;
- (PKPassDetailsIdentityBioBindingSectionControllerDelegate)delegate;
- (id)allSectionIdentifiers;
- (id)sectionIdentifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
- (int64_t)tableView:(id)a3 numberOfRowsInSectionIdentifier:(id)a4;
- (void)_updateSectionIdentifiersNotify:(BOOL)a3 animated:(BOOL)a4;
- (void)loadBioBindingStateWithAnimated:(BOOL)a3 completion:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5;
@end

@implementation PKPassDetailsIdentityBioBindingSectionController

- (PKPassDetailsIdentityBioBindingSectionController)initWithPass:(id)a3 webService:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PKPassDetailsIdentityBioBindingSectionController;
  v10 = [(PKPaymentPassDetailSectionController *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_pass, a3);
    objc_storeWeak(&v11->_delegate, v9);
  }

  return v11;
}

- (void)_updateSectionIdentifiersNotify:(BOOL)a3 animated:(BOOL)a4
{
  mapped = self->_mapped;
  hasInvalidBioBinding = self->_hasInvalidBioBinding;
  self->_mapped = hasInvalidBioBinding;
  if (mapped != hasInvalidBioBinding && a3)
  {
    v8 = a4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = WeakRetained;
    if (v8)
    {
      v11 = [(PKPassDetailsIdentityBioBindingSectionController *)self sectionIdentifiers];
      [v12 reloadSections:v11];
    }

    else
    {
      [WeakRetained reloadData:0];
    }
  }
}

- (void)loadBioBindingStateWithAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__PKPassDetailsIdentityBioBindingSectionController_loadBioBindingStateWithAnimated_completion___block_invoke;
  aBlock[3] = &unk_1E8013FD0;
  aBlock[4] = self;
  v14 = a3;
  v7 = v6;
  v13 = v7;
  v8 = _Block_copy(aBlock);
  if ([(PKSecureElementPass *)self->_pass passActivationState])
  {
    v8[2](v8, 0);
  }

  else
  {
    v9 = getNPKIDVRemoteDeviceSessionClass[0]();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __95__PKPassDetailsIdentityBioBindingSectionController_loadBioBindingStateWithAnimated_completion___block_invoke_3;
    v10[3] = &unk_1E8014020;
    v11 = v8;
    [(objc_class *)v9 sessionForDeviceID:0 completion:v10];
  }
}

void __95__PKPassDetailsIdentityBioBindingSectionController_loadBioBindingStateWithAnimated_completion___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__PKPassDetailsIdentityBioBindingSectionController_loadBioBindingStateWithAnimated_completion___block_invoke_2;
  block[3] = &unk_1E8013FA8;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = a2;
  v6 = *(a1 + 48);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __95__PKPassDetailsIdentityBioBindingSectionController_loadBioBindingStateWithAnimated_completion___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 73) = *(a1 + 48);
  [*(a1 + 32) _updateSectionIdentifiersNotify:1 animated:*(a1 + 49)];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __95__PKPassDetailsIdentityBioBindingSectionController_loadBioBindingStateWithAnimated_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __95__PKPassDetailsIdentityBioBindingSectionController_loadBioBindingStateWithAnimated_completion___block_invoke_18;
    v8[3] = &unk_1E8013FF8;
    v9 = *(a1 + 32);
    [v5 fetchRemoteBiometricAuthenticationStatusForCredentialType:1 completion:v8];
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "PKPassDetailsIdentityBioBindingSectionController: Failed to obtain NPK remote device session with error: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __95__PKPassDetailsIdentityBioBindingSectionController_loadBioBindingStateWithAnimated_completion___block_invoke_18(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKPassDetailsIdentityBioBindingSectionController: Unable to fetch remote biometric authentication status. Error: %@", &v9, 0xCu);
    }
  }

  else if (v7)
  {
    v8 = @"No";
    if (a2)
    {
      v8 = @"Yes";
    }

    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKPassDetailsIdentityBioBindingSectionController: Credential trust lost: %@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)allSectionIdentifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"BioBindingSection";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)sectionIdentifiers
{
  if ([(PKPaymentPassDetailSectionController *)self detailViewStyle]== 2 && ![(PKPaymentPassDetailSectionController *)self currentSegment]&& self->_mapped)
  {
    v3 = [(PKPassDetailsIdentityBioBindingSectionController *)self allSectionIdentifiers];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  if (PKEqualObjects())
  {
    if ([v8 row])
    {
      v9 = PKLocalizedIdentityString(&cfstr_IdentityWatchB_2.isa);
      v10 = [(PKPaymentPassDetailSectionController *)self linkCellWithText:v9 forTableView:v7];
    }

    else
    {
      v11 = [(PKSecureElementPass *)self->_pass identityType];
      if (v11 > 5)
      {
        v9 = 0;
      }

      else
      {
        v9 = PKLocalizedIdentityString(&off_1E8014040[v11]->isa);
      }

      v12 = PKLocalizedIdentityString(&cfstr_IdentityWatchB_1.isa);
      v10 = [(PKPaymentPassDetailSectionController *)self stackedInfoCellWithPrimaryText:v12 detailText:v9 cellStyle:1 forTableView:v7];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSectionIdentifier:(id)a4
{
  if (!PKEqualObjects())
  {
    return 0;
  }

  if (self->_hasInvalidBioBinding)
  {
    return 2;
  }

  return 0;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4 sectionIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 deselectRowAtIndexPath:v9 animated:1];
  v11 = PKEqualObjects();

  if (v11 && [v9 row] == 1)
  {
    v12 = [v8 cellForRowAtIndexPath:v9];
    [(PKPaymentPassDetailSectionController *)self showSpinner:1 inCell:v12 overrideTextColor:0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __104__PKPassDetailsIdentityBioBindingSectionController_tableView_didSelectRowAtIndexPath_sectionIdentifier___block_invoke;
    v15[3] = &unk_1E8010A10;
    v15[4] = self;
    v16 = v12;
    v14 = v12;
    [WeakRetained didSelectDeleteReAddForSectionController:self completion:v15];
  }
}

void __104__PKPassDetailsIdentityBioBindingSectionController_tableView_didSelectRowAtIndexPath_sectionIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 linkTextColor];
  [v1 showSpinner:0 inCell:v2 overrideTextColor:v3];
}

- (PKPassDetailsIdentityBioBindingSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
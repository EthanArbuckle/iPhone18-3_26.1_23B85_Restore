@interface PKPeerPaymentFamilySettingsViewController
- (PKPeerPaymentFamilySettingsViewController)initWithPass:(id)a3 dataProvider:(id)a4 peerPaymentAccount:(id)a5 familyCollection:(id)a6;
- (id)_contactKeysToFetch;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_updateFamilyRows;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation PKPeerPaymentFamilySettingsViewController

- (PKPeerPaymentFamilySettingsViewController)initWithPass:(id)a3 dataProvider:(id)a4 peerPaymentAccount:(id)a5 familyCollection:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v31.receiver = self;
  v31.super_class = PKPeerPaymentFamilySettingsViewController;
  v13 = -[PKPeerPaymentFamilySettingsViewController initWithStyle:](&v31, sel_initWithStyle_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1]);
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_paymentServiceDataProvider, a4);
    objc_storeStrong(&v14->_peerPaymentAccount, a5);
    objc_storeStrong(&v14->_familyCollection, a6);
    v15 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v16 = objc_alloc(MEMORY[0x1E69B8740]);
    v17 = [(PKPeerPaymentFamilySettingsViewController *)v14 _contactKeysToFetch];
    v18 = [v16 initWithContactStore:v15 keysToFetch:v17];
    contactResolver = v14->_contactResolver;
    v14->_contactResolver = v18;

    v20 = [[PKContactAvatarManager alloc] initWithContactResolver:v14->_contactResolver paymentDataProvider:v14->_paymentServiceDataProvider];
    contactAvatarManager = v14->_contactAvatarManager;
    v14->_contactAvatarManager = v20;

    v22 = [PKPeerPaymentAssociatedAccountsController alloc];
    familyCollection = v14->_familyCollection;
    v24 = v14->_contactAvatarManager;
    v25 = objc_alloc_init(MEMORY[0x1E69B8A60]);
    v26 = [(PKPeerPaymentAssociatedAccountsController *)v22 initWithFamilyCollection:familyCollection avatarManager:v24 passLibraryDataProvider:v25 context:0];
    peerPaymentAssociatedAccountsController = v14->_peerPaymentAssociatedAccountsController;
    v14->_peerPaymentAssociatedAccountsController = v26;

    v28 = [(PKPeerPaymentFamilySettingsViewController *)v14 navigationItem];
    v29 = PKLocalizedPeerPaymentString(&cfstr_MoreMenuFamily.isa, 0);
    [v28 setTitle:v29];

    [(PKPeerPaymentFamilySettingsViewController *)v14 _updateFamilyRows];
  }

  return v14;
}

- (void)_updateFamilyRows
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(PKFamilyMemberCollection *)self->_familyCollection familyMembers];
  v4 = v3;
  if (self->_peerPaymentAccount && self->_familyCollection && [v3 count])
  {
    v22 = v4;
    v5 = [PKPeerPaymentFamilyMemberRowModel sortedPeerPaymentFamilyMemberRowModelsForFamilyMembers:v4 peerPaymentAccount:self->_peerPaymentAccount];
    sortedFamilyMemberRowModels = self->_sortedFamilyMemberRowModels;
    self->_sortedFamilyMemberRowModels = v5;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = self->_sortedFamilyMemberRowModels;
    v7 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v24 = *v27;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v11 = [v10 familyMember];
          v12 = [v10 account];
          v13 = [v12 altDSID];
          v14 = v13;
          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v16 = [v10 invitation];
            v15 = [v16 altDSID];
          }

          v17 = [(PKContactAvatarManager *)self->_contactAvatarManager cachedAvatarForAltDSID:v15];
          if (!v17)
          {
            contactAvatarManager = self->_contactAvatarManager;
            v19 = [v10 account];
            v20 = [v10 invitation];
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __62__PKPeerPaymentFamilySettingsViewController__updateFamilyRows__block_invoke;
            v25[3] = &unk_1E8010AB0;
            v25[4] = v10;
            v25[5] = self;
            [(PKContactAvatarManager *)contactAvatarManager avatarForFamilyMember:v11 peerPaymentAccount:v19 invitation:v20 completion:v25];
          }

          [v10 setImage:v17];
        }

        v8 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }

    v21 = [(PKPeerPaymentFamilySettingsViewController *)self tableView];
    [v21 reloadData];

    v4 = v22;
  }
}

void __62__PKPeerPaymentFamilySettingsViewController__updateFamilyRows__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKPeerPaymentFamilySettingsViewController__updateFamilyRows__block_invoke_2;
  block[3] = &unk_1E8010A88;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __62__PKPeerPaymentFamilySettingsViewController__updateFamilyRows__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setImage:*(a1 + 40)];
  v2 = [*(a1 + 48) tableView];
  [v2 reloadData];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = [a4 row];
  if (v7 >= [(NSArray *)self->_sortedFamilyMemberRowModels count])
  {
    v8 = PKLocalizedPeerPaymentString(&cfstr_BackOfPassFami_0.isa);
    v9 = [v6 dequeueReusableCellWithIdentifier:@"linkCell"];

    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"linkCell"];
    }

    v14 = [(PKFamilyMemberTableViewCell *)v9 textLabel];
    [v14 setText:v8];

    v15 = [(PKFamilyMemberTableViewCell *)v9 textLabel];
    v16 = [MEMORY[0x1E69DC888] systemBlueColor];
    [v15 setTextColor:v16];
  }

  else
  {
    v8 = [(NSArray *)self->_sortedFamilyMemberRowModels objectAtIndex:v7];
    v9 = [v6 dequeueReusableCellWithIdentifier:@"familyMemberCell"];

    if (!v9)
    {
      v9 = [[PKFamilyMemberTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"familyMemberCell"];
      v10 = [(PKFamilyMemberTableViewCell *)v9 textLabel];
      v11 = [MEMORY[0x1E69DC888] labelColor];
      [v10 setTextColor:v11];

      v12 = [(PKFamilyMemberTableViewCell *)v9 detailTextLabel];
      v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v12 setTextColor:v13];
    }

    [(PKFamilyMemberTableViewCell *)v9 setRowModel:v8];
  }

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 row];
  if (v8 >= [(NSArray *)self->_sortedFamilyMemberRowModels count])
  {
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "Opening apple cash family sharing settings from dashboard menu", v17, 2u);
    }

    v16 = PKPeerPaymentGetAppleCashFamilySettingsSensitiveURLForAltDSID();
    PKOpenURL();
  }

  else
  {
    v9 = [(NSArray *)self->_sortedFamilyMemberRowModels objectAtIndex:v8];
    v10 = [v9 familyMember];

    v11 = [(NSArray *)self->_sortedFamilyMemberRowModels objectAtIndex:v8];
    if (([v11 state] - 1) <= 2)
    {
      v12 = [[PKPeerPaymentAssociatedAccountPresentationContext alloc] initWithPKFamilyMember:v10 options:0];
      peerPaymentAssociatedAccountsController = self->_peerPaymentAssociatedAccountsController;
      v14 = [(PKPeerPaymentFamilySettingsViewController *)self navigationController];
      [(PKPeerPaymentAssociatedAccountsController *)peerPaymentAssociatedAccountsController presentAssociatedAccountsFlowWithPresentationContext:v12 fromNavigationController:v14];
    }
  }

  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (id)_contactKeysToFetch
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v11[0] = v2;
  v3 = _MergedGlobals_1_16();
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = -[objc_class descriptorForRequiredKeysWithThreeDTouchEnabled:](v3, "descriptorForRequiredKeysWithThreeDTouchEnabled:", [v4 _supportsForceTouch]);
  v11[1] = v5;
  v6 = [off_1EE9897A8() descriptorForRequiredKeys];
  v11[2] = v6;
  v7 = [off_1EE9897B0() descriptorForRequiredKeys];
  v8 = *MEMORY[0x1E695C208];
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = *MEMORY[0x1E695C330];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  return v9;
}

@end
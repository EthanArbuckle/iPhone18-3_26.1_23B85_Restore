@interface PKPeerPaymentFamilySettingsViewController
- (PKPeerPaymentFamilySettingsViewController)initWithPass:(id)pass dataProvider:(id)provider peerPaymentAccount:(id)account familyCollection:(id)collection;
- (id)_contactKeysToFetch;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_updateFamilyRows;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation PKPeerPaymentFamilySettingsViewController

- (PKPeerPaymentFamilySettingsViewController)initWithPass:(id)pass dataProvider:(id)provider peerPaymentAccount:(id)account familyCollection:(id)collection
{
  providerCopy = provider;
  accountCopy = account;
  collectionCopy = collection;
  v31.receiver = self;
  v31.super_class = PKPeerPaymentFamilySettingsViewController;
  v13 = -[PKPeerPaymentFamilySettingsViewController initWithStyle:](&v31, sel_initWithStyle_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1]);
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_paymentServiceDataProvider, provider);
    objc_storeStrong(&v14->_peerPaymentAccount, account);
    objc_storeStrong(&v14->_familyCollection, collection);
    v15 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v16 = objc_alloc(MEMORY[0x1E69B8740]);
    _contactKeysToFetch = [(PKPeerPaymentFamilySettingsViewController *)v14 _contactKeysToFetch];
    v18 = [v16 initWithContactStore:v15 keysToFetch:_contactKeysToFetch];
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

    navigationItem = [(PKPeerPaymentFamilySettingsViewController *)v14 navigationItem];
    v29 = PKLocalizedPeerPaymentString(&cfstr_MoreMenuFamily.isa, 0);
    [navigationItem setTitle:v29];

    [(PKPeerPaymentFamilySettingsViewController *)v14 _updateFamilyRows];
  }

  return v14;
}

- (void)_updateFamilyRows
{
  v31 = *MEMORY[0x1E69E9840];
  familyMembers = [(PKFamilyMemberCollection *)self->_familyCollection familyMembers];
  v4 = familyMembers;
  if (self->_peerPaymentAccount && self->_familyCollection && [familyMembers count])
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
          familyMember = [v10 familyMember];
          account = [v10 account];
          altDSID = [account altDSID];
          v14 = altDSID;
          if (altDSID)
          {
            altDSID2 = altDSID;
          }

          else
          {
            invitation = [v10 invitation];
            altDSID2 = [invitation altDSID];
          }

          v17 = [(PKContactAvatarManager *)self->_contactAvatarManager cachedAvatarForAltDSID:altDSID2];
          if (!v17)
          {
            contactAvatarManager = self->_contactAvatarManager;
            account2 = [v10 account];
            invitation2 = [v10 invitation];
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __62__PKPeerPaymentFamilySettingsViewController__updateFamilyRows__block_invoke;
            v25[3] = &unk_1E8010AB0;
            v25[4] = v10;
            v25[5] = self;
            [(PKContactAvatarManager *)contactAvatarManager avatarForFamilyMember:familyMember peerPaymentAccount:account2 invitation:invitation2 completion:v25];
          }

          [v10 setImage:v17];
        }

        v8 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }

    tableView = [(PKPeerPaymentFamilySettingsViewController *)self tableView];
    [tableView reloadData];

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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [path row];
  if (v7 >= [(NSArray *)self->_sortedFamilyMemberRowModels count])
  {
    v8 = PKLocalizedPeerPaymentString(&cfstr_BackOfPassFami_0.isa);
    v9 = [viewCopy dequeueReusableCellWithIdentifier:@"linkCell"];

    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"linkCell"];
    }

    textLabel = [(PKFamilyMemberTableViewCell *)v9 textLabel];
    [textLabel setText:v8];

    textLabel2 = [(PKFamilyMemberTableViewCell *)v9 textLabel];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [textLabel2 setTextColor:systemBlueColor];
  }

  else
  {
    v8 = [(NSArray *)self->_sortedFamilyMemberRowModels objectAtIndex:v7];
    v9 = [viewCopy dequeueReusableCellWithIdentifier:@"familyMemberCell"];

    if (!v9)
    {
      v9 = [[PKFamilyMemberTableViewCell alloc] initWithStyle:1 reuseIdentifier:@"familyMemberCell"];
      textLabel3 = [(PKFamilyMemberTableViewCell *)v9 textLabel];
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [textLabel3 setTextColor:labelColor];

      detailTextLabel = [(PKFamilyMemberTableViewCell *)v9 detailTextLabel];
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [detailTextLabel setTextColor:secondaryLabelColor];
    }

    [(PKFamilyMemberTableViewCell *)v9 setRowModel:v8];
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [pathCopy row];
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
    familyMember = [v9 familyMember];

    v11 = [(NSArray *)self->_sortedFamilyMemberRowModels objectAtIndex:v8];
    if (([v11 state] - 1) <= 2)
    {
      v12 = [[PKPeerPaymentAssociatedAccountPresentationContext alloc] initWithPKFamilyMember:familyMember options:0];
      peerPaymentAssociatedAccountsController = self->_peerPaymentAssociatedAccountsController;
      navigationController = [(PKPeerPaymentFamilySettingsViewController *)self navigationController];
      [(PKPeerPaymentAssociatedAccountsController *)peerPaymentAssociatedAccountsController presentAssociatedAccountsFlowWithPresentationContext:v12 fromNavigationController:navigationController];
    }
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)_contactKeysToFetch
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v11[0] = v2;
  v3 = _MergedGlobals_1_16();
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v5 = -[objc_class descriptorForRequiredKeysWithThreeDTouchEnabled:](v3, "descriptorForRequiredKeysWithThreeDTouchEnabled:", [currentDevice _supportsForceTouch]);
  v11[1] = v5;
  descriptorForRequiredKeys = [off_1EE9897A8() descriptorForRequiredKeys];
  v11[2] = descriptorForRequiredKeys;
  descriptorForRequiredKeys2 = [off_1EE9897B0() descriptorForRequiredKeys];
  v8 = *MEMORY[0x1E695C208];
  v11[3] = descriptorForRequiredKeys2;
  v11[4] = v8;
  v11[5] = *MEMORY[0x1E695C330];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  return v9;
}

@end
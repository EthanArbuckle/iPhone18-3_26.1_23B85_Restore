@interface PKPeerPaymentFamilyCircleViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (PKPeerPaymentFamilyCircleViewController)initWithFamilyCollection:(id)collection avatarManager:(id)manager passLibraryDataProvider:(id)provider context:(int64_t)context;
- (id)_familyMemberWithDSID:(id)d;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_handleRowTapped:(id)tapped;
- (void)_loadAvatarImagesIfNecessary;
- (void)_peerPaymentAccountChanged:(id)changed;
- (void)_reloadSortedRows;
- (void)addPeerPaymentAssociatedAccountSetupCompletedWithSucess:(BOOL)sucess updatedAccount:(id)account forFamilyMember:(id)member;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PKPeerPaymentFamilyCircleViewController

- (PKPeerPaymentFamilyCircleViewController)initWithFamilyCollection:(id)collection avatarManager:(id)manager passLibraryDataProvider:(id)provider context:(int64_t)context
{
  collectionCopy = collection;
  managerCopy = manager;
  providerCopy = provider;
  v27.receiver = self;
  v27.super_class = PKPeerPaymentFamilyCircleViewController;
  v14 = -[PKPeerPaymentFamilyCircleViewController initWithStyle:](&v27, sel_initWithStyle_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1]);
  if (v14)
  {
    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    paymentService = v14->_paymentService;
    v14->_paymentService = paymentService;

    mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
    peerPaymentService = v14->_peerPaymentService;
    v14->_peerPaymentService = mEMORY[0x1E69B9000];

    account = [(PKPeerPaymentService *)v14->_peerPaymentService account];
    account = v14->_account;
    v14->_account = account;

    objc_storeStrong(&v14->_familyCollection, collection);
    objc_storeStrong(&v14->_avatarManager, manager);
    objc_storeStrong(&v14->_passLibraryDataProvider, provider);
    v14->_context = context;
    familyMembers = [collectionCopy familyMembers];
    v22 = [PKPeerPaymentFamilyMemberRowModel sortedPeerPaymentFamilyMemberRowModelsForFamilyMembers:familyMembers peerPaymentAccount:v14->_account];
    sortedRows = v14->_sortedRows;
    v14->_sortedRows = v22;

    [(PKPeerPaymentFamilyCircleViewController *)v14 _loadAvatarImagesIfNecessary];
    v24 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentFam.isa);
    [(PKPeerPaymentFamilyCircleViewController *)v14 setTitle:v24];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v14 selector:sel__peerPaymentAccountChanged_ name:*MEMORY[0x1E69BC360] object:v14->_peerPaymentService];
  }

  return v14;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentFamilyCircleViewController;
  [(PKPeerPaymentFamilyCircleViewController *)&v5 viewDidLoad];
  tableView = [(PKPeerPaymentFamilyCircleViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kFamilyMemberCellReuseIdentifier"];

  tableView2 = [(PKPeerPaymentFamilyCircleViewController *)self tableView];
  [tableView2 pkui_setupForReadableContentGuide];
}

- (void)viewDidAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = PKPeerPaymentFamilyCircleViewController;
  [(PKPeerPaymentFamilyCircleViewController *)&v13 viewDidAppear:appear];
  if (([(PKPeerPaymentAccount *)self->_account supportsFamilySharing]& 1) == 0)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Peer Payment family sharing feature not supported.", v12, 2u);
    }

    v5 = MEMORY[0x1E69DC650];
    v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentFea.isa);
    v7 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentFea_0.isa);
    v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

    v9 = MEMORY[0x1E69DC648];
    v10 = PKLocalizedString(&cfstr_Ok.isa);
    v11 = [v9 actionWithTitle:v10 style:0 handler:0];

    [v8 addAction:v11];
    [(PKPeerPaymentFamilyCircleViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (![(PKPeerPaymentAccount *)self->_account supportsFamilySharing:view])
  {
    return 0;
  }

  sortedRows = self->_sortedRows;

  return [(NSArray *)sortedRows count];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"kFamilyMemberCellReuseIdentifier" forIndexPath:pathCopy];
  sortedRows = self->_sortedRows;
  v9 = [pathCopy row];

  v10 = [(NSArray *)sortedRows objectAtIndex:v9];
  [v7 setRowModel:v10];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  sortedRows = self->_sortedRows;
  v8 = [pathCopy row];

  v9 = [(NSArray *)sortedRows objectAtIndex:v8];
  [(PKPeerPaymentFamilyCircleViewController *)self _handleRowTapped:v9];
}

- (void)_handleRowTapped:(id)tapped
{
  tappedCopy = tapped;
  state = [tappedCopy state];
  if ((state - 1) >= 2)
  {
    if (state != 3)
    {
      goto LABEL_6;
    }

    v8 = [PKPeerPaymentTurnOnAssociatedAccountViewController alloc];
    familyMember = [tappedCopy familyMember];
    v7 = [(PKPeerPaymentTurnOnAssociatedAccountViewController *)v8 initWithFamilyMember:familyMember familyCollection:self->_familyCollection delegate:self passLibraryDataProvider:self->_passLibraryDataProvider context:self->_context setupType:0];
  }

  else
  {
    v5 = [PKPeerPaymentAssociatedAccountViewController alloc];
    familyMember = [tappedCopy familyMember];
    v7 = [(PKPeerPaymentAssociatedAccountViewController *)v5 initWithFamilyMember:familyMember familyCollection:self->_familyCollection account:self->_account context:self->_context];
  }

  v9 = v7;

  navigationController = [(PKPeerPaymentFamilyCircleViewController *)self navigationController];
  [navigationController pushViewController:v9 animated:1];

LABEL_6:
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = -[NSArray objectAtIndex:](self->_sortedRows, "objectAtIndex:", [path row]);
  v5 = [v4 state] != 4;

  return v5;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [(PKPeerPaymentFamilyCircleViewController *)self _pendingInvitations:view];
  if ([v4 count])
  {
    v5 = 0;
  }

  else
  {
    v5 = PKLocalizedPeerPaymentString(&cfstr_BackOfPassFami.isa);
  }

  return v5;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v4 = [(PKPeerPaymentFamilyCircleViewController *)self _pendingInvitations:view];
  v5 = [v4 count];

  if (v5)
  {
    v6 = objc_alloc_init(PKFooterHyperlinkView);
    v7 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentFam_1.isa);
    v8 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentFam_2.isa, &stru_1F3BD5BF0.isa, v7);
    v9 = [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/kb/HT211324"];
    v10 = PKAttributedStringByAddingLinkToSubstring(v8, v7, v9);
    [(PKFooterHyperlinkView *)v6 setAttributedText:v10];

    v11 = &__block_literal_global_52;
    [(PKFooterHyperlinkView *)v6 setAction:&__block_literal_global_52];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addPeerPaymentAssociatedAccountSetupCompletedWithSucess:(BOOL)sucess updatedAccount:(id)account forFamilyMember:(id)member
{
  sucessCopy = sucess;
  accountCopy = account;
  memberCopy = member;
  if (sucessCopy)
  {
    if (accountCopy)
    {
      objc_storeStrong(&self->_account, account);
    }

    [(PKPeerPaymentFamilyCircleViewController *)self _reloadSortedRows];
    navigationController = [(PKPeerPaymentFamilyCircleViewController *)self navigationController];
    viewControllers = [navigationController viewControllers];
    v12 = [viewControllers mutableCopy];

    lastObject = [v12 lastObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 removeLastObject];
    }

    account = self->_account;
    altDSID = [memberCopy altDSID];
    v16 = [(PKPeerPaymentAccount *)account peerPaymentAccountWithAltDSID:altDSID];

    if (v16)
    {
      v17 = [[PKPeerPaymentAssociatedAccountViewController alloc] initWithFamilyMember:memberCopy familyCollection:self->_familyCollection account:self->_account context:self->_context];
      [v12 addObject:v17];
    }

    navigationController2 = [(PKPeerPaymentFamilyCircleViewController *)self navigationController];
    v19 = [v12 copy];
    [navigationController2 setViewControllers:v19];
  }

  navigationController3 = [(PKPeerPaymentFamilyCircleViewController *)self navigationController];
  [navigationController3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_reloadSortedRows
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_sortedRows;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        familyMember = [v8 familyMember];
        altDSID = [familyMember altDSID];

        v11 = [(PKPeerPaymentAccount *)self->_account peerPaymentAccountWithAltDSID:altDSID];
        [v8 setAccount:v11];

        v12 = [(PKPeerPaymentAccount *)self->_account accountInvitationWithAltDSID:altDSID];
        [v8 setInvitation:v12];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  tableView = [(PKPeerPaymentFamilyCircleViewController *)self tableView];
  [tableView reloadData];
}

- (void)_loadAvatarImagesIfNecessary
{
  if ([(PKPeerPaymentAccount *)self->_account supportsFamilySharing])
  {
    if ([(NSArray *)self->_sortedRows count])
    {
      v3 = 0;
      v12 = v14;
      do
      {
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__5;
        v19 = __Block_byref_object_dispose__5;
        v20 = [(NSArray *)self->_sortedRows objectAtIndexedSubscript:v3, v12];
        familyMember = [v16[5] familyMember];
        altDSID = [familyMember altDSID];

        if (altDSID)
        {
          v6 = [(PKContactAvatarManager *)self->_avatarManager cachedAvatarForAltDSID:altDSID];
          [v16[5] setImage:v6];
          if (!v6)
          {
            avatarManager = self->_avatarManager;
            familyMember2 = [v16[5] familyMember];
            account = self->_account;
            invitation = [v16[5] invitation];
            v13[0] = MEMORY[0x1E69E9820];
            v13[1] = 3221225472;
            v14[0] = __71__PKPeerPaymentFamilyCircleViewController__loadAvatarImagesIfNecessary__block_invoke;
            v14[1] = &unk_1E80140C0;
            v14[2] = self;
            v14[3] = &v15;
            v14[4] = v3;
            [(PKContactAvatarManager *)avatarManager avatarForFamilyMember:familyMember2 peerPaymentAccount:account invitation:invitation completion:v13];
          }
        }

        _Block_object_dispose(&v15, 8);
        ++v3;
      }

      while (v3 < [(NSArray *)self->_sortedRows count]);
    }

    tableView = [(PKPeerPaymentFamilyCircleViewController *)self tableView];
    [tableView reloadData];
  }
}

void __71__PKPeerPaymentFamilyCircleViewController__loadAvatarImagesIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__PKPeerPaymentFamilyCircleViewController__loadAvatarImagesIfNecessary__block_invoke_2;
  v5[3] = &unk_1E8014098;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __71__PKPeerPaymentFamilyCircleViewController__loadAvatarImagesIfNecessary__block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  [*(*(*(a1 + 48) + 8) + 40) setImage:*(a1 + 32)];
  v2 = [*(a1 + 40) tableView];
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:*(a1 + 56) inSection:0];
  v5[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 reloadRowsAtIndexPaths:v4 withRowAnimation:100];
}

- (id)_familyMemberWithDSID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_sortedRows;
  familyMember2 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (familyMember2)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != familyMember2; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        familyMember = [v9 familyMember];
        dsid = [familyMember dsid];
        v12 = PKEqualObjects();

        if (v12)
        {
          familyMember2 = [v9 familyMember];
          goto LABEL_11;
        }
      }

      familyMember2 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (familyMember2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return familyMember2;
}

- (void)_peerPaymentAccountChanged:(id)changed
{
  peerPaymentService = self->_peerPaymentService;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__PKPeerPaymentFamilyCircleViewController__peerPaymentAccountChanged___block_invoke;
  v4[3] = &unk_1E80140E8;
  v4[4] = self;
  [(PKPeerPaymentService *)peerPaymentService updateAccountWithCompletion:v4];
}

void __70__PKPeerPaymentFamilyCircleViewController__peerPaymentAccountChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__PKPeerPaymentFamilyCircleViewController__peerPaymentAccountChanged___block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __70__PKPeerPaymentFamilyCircleViewController__peerPaymentAccountChanged___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1064), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _reloadSortedRows];
}

@end
@interface PKPeerPaymentTurnOnAssociatedAccountViewController
- (PKPeerPaymentAssociatedAccountSetupDelegate)delegate;
- (PKPeerPaymentTurnOnAssociatedAccountViewController)initWithFamilyMember:(id)member familyCollection:(id)collection delegate:(id)delegate passLibraryDataProvider:(id)provider context:(int64_t)context setupType:(int64_t)type;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PKPeerPaymentTurnOnAssociatedAccountViewController

- (PKPeerPaymentTurnOnAssociatedAccountViewController)initWithFamilyMember:(id)member familyCollection:(id)collection delegate:(id)delegate passLibraryDataProvider:(id)provider context:(int64_t)context setupType:(int64_t)type
{
  memberCopy = member;
  collectionCopy = collection;
  delegateCopy = delegate;
  providerCopy = provider;
  v23.receiver = self;
  v23.super_class = PKPeerPaymentTurnOnAssociatedAccountViewController;
  v19 = [(PKPeerPaymentTurnOnAssociatedAccountViewController *)&v23 initWithStyle:2];
  v20 = v19;
  if (v19)
  {
    v19->_setupType = type;
    objc_storeStrong(&v19->_familyMember, member);
    objc_storeStrong(&v20->_familyCollection, collection);
    objc_storeWeak(&v20->_delegate, delegateCopy);
    v20->_context = context;
    objc_storeStrong(&v20->_passLibraryDataProvider, provider);
    if (v20->_context == 3)
    {
      PKLocalizedPeerPaymentString(&cfstr_PeerPaymentFam.isa);
    }

    else
    {
      [(PKFamilyMember *)v20->_familyMember labelName];
    }
    v21 = ;
    [(PKPeerPaymentTurnOnAssociatedAccountViewController *)v20 setTitle:v21];
  }

  return v20;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentTurnOnAssociatedAccountViewController;
  [(PKPeerPaymentTurnOnAssociatedAccountViewController *)&v4 viewDidLoad];
  tableView = [(PKPeerPaymentTurnOnAssociatedAccountViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"CellReuseIdentifier"];
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [(PKFamilyMember *)self->_familyMember firstName:view];
  v5 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTur_2.isa, &stru_1F3BD5BF0.isa, v4);

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = [view dequeueReusableCellWithIdentifier:@"CellReuseIdentifier" forIndexPath:path];
  textLabel = [v4 textLabel];
  v6 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTur_3.isa);
  [textLabel setText:v6];

  textLabel2 = [v4 textLabel];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [textLabel2 setTextColor:systemBlueColor];

  [v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9C30]];

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  [view deselectRowAtIndexPath:path animated:1];
  currentUser = [(PKFamilyMemberCollection *)self->_familyCollection currentUser];
  isOrganizer = [currentUser isOrganizer];

  if (isOrganizer)
  {
    v7 = [PKPeerPaymentAddAssociatedAccountViewController alloc];
    familyMember = self->_familyMember;
    familyCollection = self->_familyCollection;
    mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
    passLibraryDataProvider = self->_passLibraryDataProvider;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v20 = [(PKPeerPaymentAddAssociatedAccountViewController *)v7 initWithFamilyMember:familyMember familyCollection:familyCollection webService:mEMORY[0x1E69B9020] passLibraryDataProvider:passLibraryDataProvider delegate:WeakRetained context:self->_context setupType:self->_setupType];

    v13 = [[PKNavigationController alloc] initWithRootViewController:v20];
    [(PKNavigationController *)v13 setModalInPresentation:1];
    [(PKPeerPaymentTurnOnAssociatedAccountViewController *)self presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    v14 = MEMORY[0x1E69DC650];
    v15 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCan.isa);
    v16 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentCan_0.isa);
    v20 = [v14 alertControllerWithTitle:v15 message:v16 preferredStyle:1];

    v17 = MEMORY[0x1E69DC648];
    v18 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
    v19 = [v17 actionWithTitle:v18 style:0 handler:0];
    [(PKPeerPaymentAddAssociatedAccountViewController *)v20 addAction:v19];

    [(PKPeerPaymentTurnOnAssociatedAccountViewController *)self presentViewController:v20 animated:1 completion:0];
  }
}

- (PKPeerPaymentAssociatedAccountSetupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
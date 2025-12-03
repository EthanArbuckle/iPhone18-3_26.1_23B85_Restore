@interface PKPeerPaymentBankAccountsViewController
- (PKPeerPaymentBankAccountsViewController)initWithPeerPaymentAccount:(id)account detailViewStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_doneButtonPressed:(id)pressed;
- (void)bankAccountInformationViewControllerChangedBankAccountInformation:(id)information;
- (void)scrollViewDidScroll:(id)scroll;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPeerPaymentBankAccountsViewController

- (PKPeerPaymentBankAccountsViewController)initWithPeerPaymentAccount:(id)account detailViewStyle:(int64_t)style
{
  accountCopy = account;
  v14.receiver = self;
  v14.super_class = PKPeerPaymentBankAccountsViewController;
  v8 = -[PKSectionTableViewController initWithStyle:numberOfSections:](&v14, sel_initWithStyle_numberOfSections_, [MEMORY[0x1E69DD020] pkui_groupedStyleDefaultRoundedCornerBehavior], 1);
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69B86A8]);
    bankInformation = v8->_bankInformation;
    v8->_bankInformation = v9;

    objc_storeStrong(&v8->_account, account);
    v8->_detailViewStyle = style;
    navigationItem = [(PKPeerPaymentBankAccountsViewController *)v8 navigationItem];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      [navigationItem pkui_setupScrollEdgeChromelessAppearance];
      [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }

    v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBan_2.isa);
    [navigationItem setTitle:v12];
  }

  return v8;
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentBankAccountsViewController;
  [(PKPeerPaymentBankAccountsViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    tableView = [(PKPeerPaymentBankAccountsViewController *)self tableView];
    navigationItem = [(PKPeerPaymentBankAccountsViewController *)self navigationItem];
    [tableView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  view = [(PKPeerPaymentBankAccountsViewController *)self view];
  [view setNeedsLayout];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  bankInformation = self->_bankInformation;
  viewCopy = view;
  if ([(PKBankAccountInformation *)bankInformation isValid])
  {
    v7 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPeerPaymentBankAccountsViewControllerBankAccountCellReuseIdentifier"];

    if (!v7)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"PKPeerPaymentBankAccountsViewControllerBankAccountCellReuseIdentifier"];
    }

    textLabel = [v7 textLabel];
    bankName = [(PKBankAccountInformation *)self->_bankInformation bankName];
    [textLabel setText:bankName];

    detailTextLabel = [v7 detailTextLabel];
    maskedAccountNumber = [(PKBankAccountInformation *)self->_bankInformation maskedAccountNumber];
    [detailTextLabel setText:maskedAccountNumber];

    detailTextLabel2 = [v7 detailTextLabel];
    lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
    [detailTextLabel2 setTextColor:lightGrayColor];

    [v7 setAccessoryType:1];
  }

  else
  {
    v7 = [viewCopy dequeueReusableCellWithIdentifier:@"PKPeerPaymentBankAccountsViewControllerAddBankAccountCellReuseIdentifier"];

    if (!v7)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"PKPeerPaymentBankAccountsViewControllerAddBankAccountCellReuseIdentifier"];
      textLabel2 = [v7 textLabel];
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      [textLabel2 setTextColor:systemBlueColor];
    }

    textLabel3 = [v7 textLabel];
    v17 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBan_3.isa);
    [textLabel3 setText:v17];

    detailTextLabel3 = [v7 detailTextLabel];
    [detailTextLabel3 setText:0];

    if (self->_detailViewStyle == 2)
    {
      textLabel4 = [v7 textLabel];
      v20 = PKBridgeAppearanceGetAppearanceSpecifier();
      buttonTextColor = [v20 buttonTextColor];
      [textLabel4 setTextColor:buttonTextColor];
    }
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  [view deselectRowAtIndexPath:path animated:1];
  if (!PKBankCredentialCenterEnabled() || (aBlock[0] = MEMORY[0x1E69E9820], aBlock[1] = 3221225472, aBlock[2] = __77__PKPeerPaymentBankAccountsViewController_tableView_didSelectRowAtIndexPath___block_invoke, aBlock[3] = &unk_1E801F158, aBlock[4] = self, v5 = _Block_copy(aBlock), v14[0] = MEMORY[0x1E69E9820], v14[1] = 3221225472, v14[2] = __77__PKPeerPaymentBankAccountsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2, v14[3] = &unk_1E8010970, v14[4] = self, v6 = _Block_copy(v14), v7 = [[PKACHBankCredentialPickerViewController alloc] initWithCurrentBankInformation:self->_bankInformation selectAction:v5 cancelAction:v6], v6, v5, !v7))
  {
    v8 = [PKAddBankAccountInformationViewController alloc];
    bankInformation = self->_bankInformation;
    countryCode = [(PKPeerPaymentAccount *)self->_account countryCode];
    v11 = [(PKAddBankAccountInformationViewController *)v8 initWithDelegate:self bankInformation:bankInformation accountCountryCode:countryCode];

    v7 = [[PKNavigationController alloc] initWithRootViewController:v11];
    [(PKNavigationController *)v7 setSupportedInterfaceOrientations:2];
  }

  if (PKIsPad())
  {
    v12 = 2;
LABEL_8:
    [(PKNavigationController *)v7 setModalPresentationStyle:v12];
    goto LABEL_9;
  }

  if (PKIsVision())
  {
    v12 = 1;
    goto LABEL_8;
  }

LABEL_9:
  navigationController = [(PKPeerPaymentBankAccountsViewController *)self navigationController];
  [navigationController presentViewController:v7 animated:1 completion:0];
}

void __77__PKPeerPaymentBankAccountsViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1104);
  v4 = a2;
  v5 = [v4 routingNumber];
  [v3 setRoutingNumber:v5];

  v6 = *(*(a1 + 32) + 1104);
  v7 = [v4 accountNumber];
  [v6 setAccountNumber:v7];

  v8 = *(*(a1 + 32) + 1104);
  v9 = [v4 bankName];
  [v8 setBankName:v9];

  v10 = *(*(a1 + 32) + 1104);
  v11 = [v4 identifier];

  [v10 setIdentifier:v11];
  v12 = [*(a1 + 32) tableView];
  [v12 reloadData];

  v13 = [*(a1 + 32) navigationController];
  [v13 dismissViewControllerAnimated:1 completion:0];
}

void __77__PKPeerPaymentBankAccountsViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (void)bankAccountInformationViewControllerChangedBankAccountInformation:(id)information
{
  tableView = [(PKPeerPaymentBankAccountsViewController *)self tableView];
  [tableView reloadData];
}

- (void)_doneButtonPressed:(id)pressed
{
  presentingViewController = [(PKPeerPaymentBankAccountsViewController *)self presentingViewController];

  if (presentingViewController)
  {
    [(PKPeerPaymentBankAccountsViewController *)self presentingViewController];
  }

  else
  {
    [(PKPeerPaymentBankAccountsViewController *)self navigationController];
  }
  v5 = ;
  [v5 dismissViewControllerAnimated:1 completion:0];
}

@end
@interface PKPhysicalCardSupportViewController
- (PKPhysicalCardSupportViewController)initWithAccountService:(id)service account:(id)account accountUser:(id)user paymentPass:(id)pass physicalCard:(id)card;
- (id)contactIssuerHelper;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_nextButtonTapped:(id)tapped;
- (void)_presentBusinessChatWithContext:(id)context;
- (void)_presentCallSupportWithSourceItem:(id)item;
- (void)_presentManualActivation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPhysicalCardSupportViewController

- (PKPhysicalCardSupportViewController)initWithAccountService:(id)service account:(id)account accountUser:(id)user paymentPass:(id)pass physicalCard:(id)card
{
  serviceCopy = service;
  accountCopy = account;
  userCopy = user;
  passCopy = pass;
  cardCopy = card;
  v26.receiver = self;
  v26.super_class = PKPhysicalCardSupportViewController;
  v17 = [(PKPhysicalCardSupportViewController *)&v26 initWithStyle:1];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_accountService, service);
    objc_storeStrong(&v18->_account, account);
    objc_storeStrong(&v18->_accountUser, user);
    objc_storeStrong(&v18->_paymentPass, pass);
    objc_storeStrong(&v18->_physicalCard, card);
    navigationItem = [(PKPhysicalCardSupportViewController *)v18 navigationItem];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      [navigationItem pkui_setupScrollEdgeChromelessAppearance];
      [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }

    v20 = objc_alloc(MEMORY[0x1E69DC708]);
    v21 = PKLocalizedPaymentString(&cfstr_Next.isa);
    v22 = [v20 initWithTitle:v21 style:0 target:v18 action:sel__nextButtonTapped_];
    nextButton = v18->_nextButton;
    v18->_nextButton = v22;

    [(UIBarButtonItem *)v18->_nextButton setEnabled:0];
    [navigationItem setRightBarButtonItem:v18->_nextButton];
  }

  return v18;
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = PKPhysicalCardSupportViewController;
  [(PKPhysicalCardSupportViewController *)&v18 viewDidLoad];
  [(PKAccount *)self->_account feature];
  v3 = PKLocalizedFeatureString();
  v4 = PKLocalizedFeatureString();
  v5 = [PKTableHeaderView alloc];
  v6 = [(PKTableHeaderView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  tableHeaderView = self->_tableHeaderView;
  self->_tableHeaderView = v6;

  titleLabel = [(PKTableHeaderView *)self->_tableHeaderView titleLabel];
  [titleLabel setText:v3];

  subtitleLabel = [(PKTableHeaderView *)self->_tableHeaderView subtitleLabel];
  [subtitleLabel setText:v4];

  [(PKTableHeaderView *)self->_tableHeaderView setTopPadding:5.0];
  v10 = self->_tableHeaderView;
  tableView = [(PKPhysicalCardSupportViewController *)self tableView];
  [tableView bounds];
  [(PKTableHeaderView *)v10 sizeThatFits:CGRectGetWidth(v19), 3.40282347e38];
  v13 = v12;
  v15 = v14;

  [(PKTableHeaderView *)self->_tableHeaderView setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v13, v15];
  tableView2 = [(PKPhysicalCardSupportViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"PhysicalCardSupportReuseIdentifier"];
  [tableView2 setTableHeaderView:self->_tableHeaderView];
  systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [tableView2 setBackgroundColor:systemGroupedBackgroundColor];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKPhysicalCardSupportViewController;
  [(PKPhysicalCardSupportViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    tableView = [(PKPhysicalCardSupportViewController *)self tableView];
    navigationItem = [(PKPhysicalCardSupportViewController *)self navigationItem];
    [tableView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  view = [(PKPhysicalCardSupportViewController *)self view];
  [view setNeedsLayout];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  if (self->_hasSelectedReason)
  {
    v6 = MEMORY[0x1E696AC88];
    selectedReason = self->_selectedReason;
    pathCopy = path;
    v9 = [v6 indexPathForRow:selectedReason inSection:0];
    v10 = [viewCopy cellForRowAtIndexPath:v9];
    [v10 setAccessoryType:0];
  }

  else
  {
    nextButton = self->_nextButton;
    pathCopy2 = path;
    [(UIBarButtonItem *)nextButton setEnabled:1];
  }

  self->_hasSelectedReason = 1;
  self->_selectedReason = [path row];
  v13 = [viewCopy cellForRowAtIndexPath:path];
  [v13 setAccessoryType:3];
  [viewCopy deselectRowAtIndexPath:path animated:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PhysicalCardSupportReuseIdentifier" forIndexPath:pathCopy];
  v8 = [pathCopy row];

  if (v8 > 2)
  {
    v9 = 0;
  }

  else
  {
    [(PKAccount *)self->_account feature];
    v9 = PKLocalizedFeatureString();
  }

  if (self->_hasSelectedReason)
  {
    if (v8 == self->_selectedReason)
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  [v7 setAccessoryType:v10];
  textLabel = [v7 textLabel];
  [textLabel setText:v9];

  [v7 setSeparatorInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  return v7;
}

- (void)_nextButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if (self->_hasSelectedReason)
  {
    selectedReason = self->_selectedReason;
    if (selectedReason == 2)
    {
      v10 = tappedCopy;
      if (+[PKBusinessChatController deviceSupportsBusinessChat])
      {
        v6 = [PKBusinessChatPhysicalCardContext alloc];
        paymentPass = self->_paymentPass;
        v8 = 7;
        goto LABEL_10;
      }
    }

    else
    {
      if (selectedReason != 1)
      {
        if (selectedReason)
        {
          goto LABEL_13;
        }

        v10 = tappedCopy;
        [(PKPhysicalCardSupportViewController *)self _presentManualActivation];
        goto LABEL_12;
      }

      v10 = tappedCopy;
      if (+[PKBusinessChatController deviceSupportsBusinessChat])
      {
        v6 = [PKBusinessChatPhysicalCardContext alloc];
        paymentPass = self->_paymentPass;
        v8 = 5;
LABEL_10:
        v9 = [(PKBusinessChatPhysicalCardContext *)v6 initWithPaymentPass:paymentPass intent:v8];
        [(PKPhysicalCardSupportViewController *)self _presentBusinessChatWithContext:v9];

LABEL_12:
        tappedCopy = v10;
        goto LABEL_13;
      }
    }

    [(PKPhysicalCardSupportViewController *)self _presentCallSupportWithSourceItem:v10];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_presentBusinessChatWithContext:(id)context
{
  contextCopy = context;
  businessChatController = self->_businessChatController;
  if (!businessChatController)
  {
    v6 = objc_alloc_init(PKBusinessChatController);
    v7 = self->_businessChatController;
    self->_businessChatController = v6;

    businessChatController = self->_businessChatController;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__PKPhysicalCardSupportViewController__presentBusinessChatWithContext___block_invoke;
  v8[3] = &unk_1E8013908;
  v8[4] = self;
  [(PKBusinessChatController *)businessChatController openBusinessChatWithContext:contextCopy completion:v8];
}

void __71__PKPhysicalCardSupportViewController__presentBusinessChatWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PKPhysicalCardSupportViewController__presentBusinessChatWithContext___block_invoke_2;
  v6[3] = &unk_1E8010A10;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __71__PKPhysicalCardSupportViewController__presentBusinessChatWithContext___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = PKAlertForDisplayableErrorWithHandlers(v2, 0, 0, 0);
    [*(a1 + 40) presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    v3 = *(a1 + 40);

    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_presentManualActivation
{
  v4 = [[PKPhysicalCardManualActivationViewController alloc] initWithAccountService:self->_accountService account:self->_account accountUser:self->_accountUser paymentPass:self->_paymentPass physicalCard:self->_physicalCard activationCode:0];
  navigationController = [(PKPhysicalCardSupportViewController *)self navigationController];
  [navigationController pushViewController:v4 animated:1];
}

- (void)_presentCallSupportWithSourceItem:(id)item
{
  itemCopy = item;
  contactIssuerHelper = [(PKPhysicalCardSupportViewController *)self contactIssuerHelper];
  [contactIssuerHelper presentContactViewController:1 sourceItem:itemCopy];
}

- (id)contactIssuerHelper
{
  contactIssuerHelper = self->_contactIssuerHelper;
  if (!contactIssuerHelper)
  {
    v4 = objc_alloc_init(PKSecureElementPassContactIssuerHelper);
    v5 = self->_contactIssuerHelper;
    self->_contactIssuerHelper = v4;

    [(PKSecureElementPassContactIssuerHelper *)self->_contactIssuerHelper setDelegate:self];
    [(PKSecureElementPassContactIssuerHelper *)self->_contactIssuerHelper setPass:self->_paymentPass];
    [(PKSecureElementPassContactIssuerHelper *)self->_contactIssuerHelper setFeatureIdentifier:2];
    contactIssuerHelper = self->_contactIssuerHelper;
  }

  return contactIssuerHelper;
}

@end
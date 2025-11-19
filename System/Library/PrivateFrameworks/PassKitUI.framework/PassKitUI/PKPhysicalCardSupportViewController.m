@interface PKPhysicalCardSupportViewController
- (PKPhysicalCardSupportViewController)initWithAccountService:(id)a3 account:(id)a4 accountUser:(id)a5 paymentPass:(id)a6 physicalCard:(id)a7;
- (id)contactIssuerHelper;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_nextButtonTapped:(id)a3;
- (void)_presentBusinessChatWithContext:(id)a3;
- (void)_presentCallSupportWithSourceItem:(id)a3;
- (void)_presentManualActivation;
- (void)scrollViewDidScroll:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPhysicalCardSupportViewController

- (PKPhysicalCardSupportViewController)initWithAccountService:(id)a3 account:(id)a4 accountUser:(id)a5 paymentPass:(id)a6 physicalCard:(id)a7
{
  v13 = a3;
  v25 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = PKPhysicalCardSupportViewController;
  v17 = [(PKPhysicalCardSupportViewController *)&v26 initWithStyle:1];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_accountService, a3);
    objc_storeStrong(&v18->_account, a4);
    objc_storeStrong(&v18->_accountUser, a5);
    objc_storeStrong(&v18->_paymentPass, a6);
    objc_storeStrong(&v18->_physicalCard, a7);
    v19 = [(PKPhysicalCardSupportViewController *)v18 navigationItem];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      [v19 pkui_setupScrollEdgeChromelessAppearance];
      [v19 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
    }

    v20 = objc_alloc(MEMORY[0x1E69DC708]);
    v21 = PKLocalizedPaymentString(&cfstr_Next.isa);
    v22 = [v20 initWithTitle:v21 style:0 target:v18 action:sel__nextButtonTapped_];
    nextButton = v18->_nextButton;
    v18->_nextButton = v22;

    [(UIBarButtonItem *)v18->_nextButton setEnabled:0];
    [v19 setRightBarButtonItem:v18->_nextButton];
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

  v8 = [(PKTableHeaderView *)self->_tableHeaderView titleLabel];
  [v8 setText:v3];

  v9 = [(PKTableHeaderView *)self->_tableHeaderView subtitleLabel];
  [v9 setText:v4];

  [(PKTableHeaderView *)self->_tableHeaderView setTopPadding:5.0];
  v10 = self->_tableHeaderView;
  v11 = [(PKPhysicalCardSupportViewController *)self tableView];
  [v11 bounds];
  [(PKTableHeaderView *)v10 sizeThatFits:CGRectGetWidth(v19), 3.40282347e38];
  v13 = v12;
  v15 = v14;

  [(PKTableHeaderView *)self->_tableHeaderView setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v13, v15];
  v16 = [(PKPhysicalCardSupportViewController *)self tableView];
  [v16 registerClass:objc_opt_class() forCellReuseIdentifier:@"PhysicalCardSupportReuseIdentifier"];
  [v16 setTableHeaderView:self->_tableHeaderView];
  v17 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  [v16 setBackgroundColor:v17];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKPhysicalCardSupportViewController;
  [(PKPhysicalCardSupportViewController *)&v5 viewWillLayoutSubviews];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [(PKPhysicalCardSupportViewController *)self tableView];
    v4 = [(PKPhysicalCardSupportViewController *)self navigationItem];
    [v3 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v4];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = [(PKPhysicalCardSupportViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14 = a3;
  if (self->_hasSelectedReason)
  {
    v6 = MEMORY[0x1E696AC88];
    selectedReason = self->_selectedReason;
    v8 = a4;
    v9 = [v6 indexPathForRow:selectedReason inSection:0];
    v10 = [v14 cellForRowAtIndexPath:v9];
    [v10 setAccessoryType:0];
  }

  else
  {
    nextButton = self->_nextButton;
    v12 = a4;
    [(UIBarButtonItem *)nextButton setEnabled:1];
  }

  self->_hasSelectedReason = 1;
  self->_selectedReason = [a4 row];
  v13 = [v14 cellForRowAtIndexPath:a4];
  [v13 setAccessoryType:3];
  [v14 deselectRowAtIndexPath:a4 animated:1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PhysicalCardSupportReuseIdentifier" forIndexPath:v6];
  v8 = [v6 row];

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
  v11 = [v7 textLabel];
  [v11 setText:v9];

  [v7 setSeparatorInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  return v7;
}

- (void)_nextButtonTapped:(id)a3
{
  v4 = a3;
  if (self->_hasSelectedReason)
  {
    selectedReason = self->_selectedReason;
    if (selectedReason == 2)
    {
      v10 = v4;
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

        v10 = v4;
        [(PKPhysicalCardSupportViewController *)self _presentManualActivation];
        goto LABEL_12;
      }

      v10 = v4;
      if (+[PKBusinessChatController deviceSupportsBusinessChat])
      {
        v6 = [PKBusinessChatPhysicalCardContext alloc];
        paymentPass = self->_paymentPass;
        v8 = 5;
LABEL_10:
        v9 = [(PKBusinessChatPhysicalCardContext *)v6 initWithPaymentPass:paymentPass intent:v8];
        [(PKPhysicalCardSupportViewController *)self _presentBusinessChatWithContext:v9];

LABEL_12:
        v4 = v10;
        goto LABEL_13;
      }
    }

    [(PKPhysicalCardSupportViewController *)self _presentCallSupportWithSourceItem:v10];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_presentBusinessChatWithContext:(id)a3
{
  v4 = a3;
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
  [(PKBusinessChatController *)businessChatController openBusinessChatWithContext:v4 completion:v8];
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
  v3 = [(PKPhysicalCardSupportViewController *)self navigationController];
  [v3 pushViewController:v4 animated:1];
}

- (void)_presentCallSupportWithSourceItem:(id)a3
{
  v4 = a3;
  v5 = [(PKPhysicalCardSupportViewController *)self contactIssuerHelper];
  [v5 presentContactViewController:1 sourceItem:v4];
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
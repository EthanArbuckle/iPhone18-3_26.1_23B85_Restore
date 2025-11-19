@interface PKPaymentSetupProvisioningFieldsViewController
- (PKPaymentProvisioningViewControllerDelegate)flowItemDelegate;
- (PKPaymentSetupProvisioningFieldsViewController)initWithProvisioningController:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 setupFieldsModel:(id)a6;
- (id)_cardDetailsFooterView;
- (void)addDifferentCard:(id)a3;
- (void)dealloc;
- (void)resetRightBarButtonState;
- (void)setNotificationTextInFooterView:(id)a3;
- (void)setupLater:(id)a3;
- (void)showVerifiedUIForPass:(id)a3;
- (void)suppressFooterViewManualEntryButton;
- (void)suppressFooterViewSkipCardButton;
- (void)updateLocationAuthorization;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PKPaymentSetupProvisioningFieldsViewController

- (PKPaymentSetupProvisioningFieldsViewController)initWithProvisioningController:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 setupFieldsModel:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = [a3 webService];
  v15.receiver = self;
  v15.super_class = PKPaymentSetupProvisioningFieldsViewController;
  v13 = [(PKPaymentSetupFieldsViewController *)&v15 initWithWebService:v12 context:a4 setupDelegate:v11 setupFieldsModel:v10];

  return v13;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(CLInUseAssertion *)self->_CLInUse invalidate];
  [(UINotificationFeedbackGenerator *)self->_cardAddedFeedbackGenerator deactivate];
  v4.receiver = self;
  v4.super_class = PKPaymentSetupProvisioningFieldsViewController;
  [(PKPaymentSetupTableViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupProvisioningFieldsViewController;
  [(PKPaymentSetupFieldsViewController *)&v7 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DCCF0]);
  v4 = [(PKPaymentSetupProvisioningFieldsViewController *)self view];
  v5 = [v3 initWithView:v4];
  cardAddedFeedbackGenerator = self->_cardAddedFeedbackGenerator;
  self->_cardAddedFeedbackGenerator = v5;

  [(UINotificationFeedbackGenerator *)self->_cardAddedFeedbackGenerator activateWithCompletionBlock:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (!self->_CLInUse)
  {
    v5 = MEMORY[0x1E695FBE0];
    v6 = PKPassKitCoreBundle();
    v7 = [v5 newAssertionForBundle:v6 withReason:@"Passbook showing add card UI"];
    CLInUse = self->_CLInUse;
    self->_CLInUse = v7;
  }

  v9.receiver = self;
  v9.super_class = PKPaymentSetupProvisioningFieldsViewController;
  [(PKPaymentSetupFieldsViewController *)&v9 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  CLInUse = self->_CLInUse;
  if (CLInUse)
  {
    [(CLInUseAssertion *)CLInUse invalidate];
    v6 = self->_CLInUse;
    self->_CLInUse = 0;
  }

  v7.receiver = self;
  v7.super_class = PKPaymentSetupProvisioningFieldsViewController;
  [(PKPaymentSetupFieldsViewController *)&v7 viewWillDisappear:v3];
}

- (id)_cardDetailsFooterView
{
  cardDetailsFooterView = self->_cardDetailsFooterView;
  if (!cardDetailsFooterView)
  {
    v4 = [PKPaymentSetupFooterView alloc];
    v5 = [(PKPaymentSetupTableViewController *)self context];
    v6 = [(PKPaymentSetupFooterView *)v4 initWithFrame:v5 context:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v7 = self->_cardDetailsFooterView;
    self->_cardDetailsFooterView = v6;

    v8 = self->_cardDetailsFooterView;
    PKSetupViewConstantsViewMargin();
    UIEdgeInsetsMakeWithEdges();
    [(PKPaymentSetupFooterView *)v8 setReadableContentInsets:?];
    v9 = self->_cardDetailsFooterView;
    v10 = [(PKPaymentSetupTableViewController *)self tableView];
    [v10 bounds];
    [(PKPaymentSetupFooterView *)v9 sizeThatFits:CGRectGetWidth(v17), 3.40282347e38];
    v12 = v11;
    v14 = v13;

    [(PKPaymentSetupFooterView *)self->_cardDetailsFooterView setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v12, v14];
    cardDetailsFooterView = self->_cardDetailsFooterView;
  }

  return cardDetailsFooterView;
}

- (void)suppressFooterViewSkipCardButton
{
  if (_UISolariumFeatureFlagEnabled())
  {
    v6 = [(PKPaymentSetupTableViewController *)self dockView];
    v3 = [v6 footerView];
    [v3 setSkipCardButton:0];
  }

  else
  {
    v4 = [(PKPaymentSetupProvisioningFieldsViewController *)self _cardDetailsFooterView];
    [v4 setSkipCardButton:0];

    v5 = [(PKPaymentSetupProvisioningFieldsViewController *)self _cardDetailsFooterView];
    [v5 sizeToFit];

    v6 = [(PKPaymentSetupTableViewController *)self tableView];
    v3 = [(PKPaymentSetupProvisioningFieldsViewController *)self footerView];
    [v3 bounds];
    [v6 _tableFooterHeightDidChangeToHeight:CGRectGetHeight(v8)];
  }
}

- (void)suppressFooterViewManualEntryButton
{
  if (_UISolariumFeatureFlagEnabled())
  {
    v6 = [(PKPaymentSetupTableViewController *)self dockView];
    v3 = [v6 footerView];
    [v3 setManualEntryButton:0];
  }

  else
  {
    v4 = [(PKPaymentSetupProvisioningFieldsViewController *)self _cardDetailsFooterView];
    [v4 setManualEntryButton:0];

    v5 = [(PKPaymentSetupProvisioningFieldsViewController *)self _cardDetailsFooterView];
    [v5 sizeToFit];

    v6 = [(PKPaymentSetupTableViewController *)self tableView];
    v3 = [(PKPaymentSetupProvisioningFieldsViewController *)self footerView];
    [v3 bounds];
    [v6 _tableFooterHeightDidChangeToHeight:CGRectGetHeight(v8)];
  }
}

- (void)setNotificationTextInFooterView:(id)a3
{
  v4 = a3;
  if (_UISolariumFeatureFlagEnabled())
  {
    v10 = [(PKPaymentSetupTableViewController *)self dockView];
    v5 = [v10 footerView];
    v6 = [v5 notificationText];
    [v6 setText:v4];
  }

  else
  {
    v7 = [(PKPaymentSetupProvisioningFieldsViewController *)self _cardDetailsFooterView];
    v8 = [v7 notificationText];
    [v8 setText:v4];

    v9 = [(PKPaymentSetupProvisioningFieldsViewController *)self _cardDetailsFooterView];
    [v9 sizeToFit];

    v10 = [(PKPaymentSetupTableViewController *)self tableView];
    v5 = [(PKPaymentSetupProvisioningFieldsViewController *)self footerView];
    [v5 bounds];
    [v10 _tableFooterHeightDidChangeToHeight:CGRectGetHeight(v12)];
  }
}

- (void)showVerifiedUIForPass:(id)a3
{
  v27[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 supportsBarcodePayment];
  v6 = MEMORY[0x1E69B8540];
  v7 = *MEMORY[0x1E69BB6E8];
  v27[0] = *MEMORY[0x1E69BB6E0];
  v27[1] = v7;
  v27[2] = *MEMORY[0x1E69BB728];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
  v9 = *MEMORY[0x1E69BABE8];
  v25[0] = *MEMORY[0x1E69BA680];
  v25[1] = v9;
  v10 = *MEMORY[0x1E69BB5D0];
  v26[0] = *MEMORY[0x1E69BA818];
  v26[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
  [v6 subjects:v8 sendEvent:v11];

  [(PKPaymentSetupFieldsViewController *)self showCheckmarkAnimated:1];
  v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v14 = v13;
  if (!v5)
  {
    if ([v4 accessType] == 3)
    {
      [v14 appendString:@"ADDING_KEY"];
      [v12 appendString:@"KEY_ADDED_MESSAGE"];
    }

    else
    {
      v16 = [v4 associatedAccountFeatureIdentifier];
      [v14 appendString:@"ADDING_CARD"];
      if (v16 == 4)
      {
        [v12 appendString:@"CARD_ADDED_BODY"];
        v15 = MEMORY[0x1E69BC720];
        goto LABEL_9;
      }

      v17 = [(PKPaymentSetupFieldsViewController *)self webService];
      v18 = [v17 targetDevice];
      v19 = [v18 deviceName];

      v20 = PKDeviceSpecificLocalizedStringKeyForKey(@"CARD_ADDED_MESSAGE", [v19 isEqualToString:@"Apple Watch"]);
      [v12 appendString:v20];
    }

    v15 = MEMORY[0x1E69BC708];
    goto LABEL_9;
  }

  [v13 appendString:@"ADDING_ACCOUNT"];
  [v12 appendString:@"ACCOUNT_ADDED_MESSAGE"];
  v15 = MEMORY[0x1E69BC6F8];
LABEL_9:
  v21 = v15;
  v22 = v15(v14);
  v23 = v21(v12);
  [(PKPaymentSetupFieldsViewController *)self hideActivitySpinnerWithTitle:v22 subtitle:v23 animated:0];

  v24 = [(PKPaymentSetupTableViewController *)self dockView];
  [v24 setButtonsEnabled:0];

  [(PKPaymentSetupFieldsViewController *)self endUserInteraction];
}

- (void)addDifferentCard:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);
  [WeakRetained provisioningViewControllerDidSelectManualEntry:self];
}

- (void)setupLater:(id)a3
{
  MEMORY[0x1BFB41980](*MEMORY[0x1E69BA028], 0, a3);
  v4 = [(PKPaymentSetupFieldsViewController *)self setupDelegate];
  [v4 viewControllerDidTerminateSetupFlow:self];
}

- (void)updateLocationAuthorization
{
  [(PKPaymentSetupTableViewController *)self context];
  if (PKPaymentSetupContextIsSetupAssistant())
  {
    if ([MEMORY[0x1E695FBE8] locationServicesEnabled])
    {
      v2 = MEMORY[0x1E695FBE8];
      v3 = PKPassKitCoreBundle();
      v4 = [v3 bundlePath];
      LODWORD(v2) = [v2 authorizationStatusForBundlePath:v4];

      if (!v2)
      {
        v5 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Setting authorization status for PassKitCore to WhenInUse", v8, 2u);
        }

        v6 = MEMORY[0x1E695FBE8];
        v7 = PKPassKitCoreBundle();
        [v6 setAuthorizationStatusByType:4 forBundle:v7];
      }
    }
  }
}

- (void)resetRightBarButtonState
{
  v3 = [(PKPaymentSetupFieldsViewController *)self isComplete];

  [(PKPaymentSetupFieldsViewController *)self _setPrimaryButtonEnabled:v3];
}

- (PKPaymentProvisioningViewControllerDelegate)flowItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);

  return WeakRetained;
}

@end
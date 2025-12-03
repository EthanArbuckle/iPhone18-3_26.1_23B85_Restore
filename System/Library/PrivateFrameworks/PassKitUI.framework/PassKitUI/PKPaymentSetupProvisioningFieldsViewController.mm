@interface PKPaymentSetupProvisioningFieldsViewController
- (PKPaymentProvisioningViewControllerDelegate)flowItemDelegate;
- (PKPaymentSetupProvisioningFieldsViewController)initWithProvisioningController:(id)controller context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model;
- (id)_cardDetailsFooterView;
- (void)addDifferentCard:(id)card;
- (void)dealloc;
- (void)resetRightBarButtonState;
- (void)setNotificationTextInFooterView:(id)view;
- (void)setupLater:(id)later;
- (void)showVerifiedUIForPass:(id)pass;
- (void)suppressFooterViewManualEntryButton;
- (void)suppressFooterViewSkipCardButton;
- (void)updateLocationAuthorization;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKPaymentSetupProvisioningFieldsViewController

- (PKPaymentSetupProvisioningFieldsViewController)initWithProvisioningController:(id)controller context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model
{
  modelCopy = model;
  delegateCopy = delegate;
  webService = [controller webService];
  v15.receiver = self;
  v15.super_class = PKPaymentSetupProvisioningFieldsViewController;
  v13 = [(PKPaymentSetupFieldsViewController *)&v15 initWithWebService:webService context:context setupDelegate:delegateCopy setupFieldsModel:modelCopy];

  return v13;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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
  view = [(PKPaymentSetupProvisioningFieldsViewController *)self view];
  v5 = [v3 initWithView:view];
  cardAddedFeedbackGenerator = self->_cardAddedFeedbackGenerator;
  self->_cardAddedFeedbackGenerator = v5;

  [(UINotificationFeedbackGenerator *)self->_cardAddedFeedbackGenerator activateWithCompletionBlock:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
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
  [(PKPaymentSetupFieldsViewController *)&v9 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  CLInUse = self->_CLInUse;
  if (CLInUse)
  {
    [(CLInUseAssertion *)CLInUse invalidate];
    v6 = self->_CLInUse;
    self->_CLInUse = 0;
  }

  v7.receiver = self;
  v7.super_class = PKPaymentSetupProvisioningFieldsViewController;
  [(PKPaymentSetupFieldsViewController *)&v7 viewWillDisappear:disappearCopy];
}

- (id)_cardDetailsFooterView
{
  cardDetailsFooterView = self->_cardDetailsFooterView;
  if (!cardDetailsFooterView)
  {
    v4 = [PKPaymentSetupFooterView alloc];
    context = [(PKPaymentSetupTableViewController *)self context];
    v6 = [(PKPaymentSetupFooterView *)v4 initWithFrame:context context:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v7 = self->_cardDetailsFooterView;
    self->_cardDetailsFooterView = v6;

    v8 = self->_cardDetailsFooterView;
    PKSetupViewConstantsViewMargin();
    UIEdgeInsetsMakeWithEdges();
    [(PKPaymentSetupFooterView *)v8 setReadableContentInsets:?];
    v9 = self->_cardDetailsFooterView;
    tableView = [(PKPaymentSetupTableViewController *)self tableView];
    [tableView bounds];
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
    dockView = [(PKPaymentSetupTableViewController *)self dockView];
    footerView = [dockView footerView];
    [footerView setSkipCardButton:0];
  }

  else
  {
    _cardDetailsFooterView = [(PKPaymentSetupProvisioningFieldsViewController *)self _cardDetailsFooterView];
    [_cardDetailsFooterView setSkipCardButton:0];

    _cardDetailsFooterView2 = [(PKPaymentSetupProvisioningFieldsViewController *)self _cardDetailsFooterView];
    [_cardDetailsFooterView2 sizeToFit];

    dockView = [(PKPaymentSetupTableViewController *)self tableView];
    footerView = [(PKPaymentSetupProvisioningFieldsViewController *)self footerView];
    [footerView bounds];
    [dockView _tableFooterHeightDidChangeToHeight:CGRectGetHeight(v8)];
  }
}

- (void)suppressFooterViewManualEntryButton
{
  if (_UISolariumFeatureFlagEnabled())
  {
    dockView = [(PKPaymentSetupTableViewController *)self dockView];
    footerView = [dockView footerView];
    [footerView setManualEntryButton:0];
  }

  else
  {
    _cardDetailsFooterView = [(PKPaymentSetupProvisioningFieldsViewController *)self _cardDetailsFooterView];
    [_cardDetailsFooterView setManualEntryButton:0];

    _cardDetailsFooterView2 = [(PKPaymentSetupProvisioningFieldsViewController *)self _cardDetailsFooterView];
    [_cardDetailsFooterView2 sizeToFit];

    dockView = [(PKPaymentSetupTableViewController *)self tableView];
    footerView = [(PKPaymentSetupProvisioningFieldsViewController *)self footerView];
    [footerView bounds];
    [dockView _tableFooterHeightDidChangeToHeight:CGRectGetHeight(v8)];
  }
}

- (void)setNotificationTextInFooterView:(id)view
{
  viewCopy = view;
  if (_UISolariumFeatureFlagEnabled())
  {
    dockView = [(PKPaymentSetupTableViewController *)self dockView];
    footerView = [dockView footerView];
    notificationText = [footerView notificationText];
    [notificationText setText:viewCopy];
  }

  else
  {
    _cardDetailsFooterView = [(PKPaymentSetupProvisioningFieldsViewController *)self _cardDetailsFooterView];
    notificationText2 = [_cardDetailsFooterView notificationText];
    [notificationText2 setText:viewCopy];

    _cardDetailsFooterView2 = [(PKPaymentSetupProvisioningFieldsViewController *)self _cardDetailsFooterView];
    [_cardDetailsFooterView2 sizeToFit];

    dockView = [(PKPaymentSetupTableViewController *)self tableView];
    footerView = [(PKPaymentSetupProvisioningFieldsViewController *)self footerView];
    [footerView bounds];
    [dockView _tableFooterHeightDidChangeToHeight:CGRectGetHeight(v12)];
  }
}

- (void)showVerifiedUIForPass:(id)pass
{
  v27[3] = *MEMORY[0x1E69E9840];
  passCopy = pass;
  supportsBarcodePayment = [passCopy supportsBarcodePayment];
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
  if (!supportsBarcodePayment)
  {
    if ([passCopy accessType] == 3)
    {
      [v14 appendString:@"ADDING_KEY"];
      [v12 appendString:@"KEY_ADDED_MESSAGE"];
    }

    else
    {
      associatedAccountFeatureIdentifier = [passCopy associatedAccountFeatureIdentifier];
      [v14 appendString:@"ADDING_CARD"];
      if (associatedAccountFeatureIdentifier == 4)
      {
        [v12 appendString:@"CARD_ADDED_BODY"];
        v15 = MEMORY[0x1E69BC720];
        goto LABEL_9;
      }

      webService = [(PKPaymentSetupFieldsViewController *)self webService];
      targetDevice = [webService targetDevice];
      deviceName = [targetDevice deviceName];

      v20 = PKDeviceSpecificLocalizedStringKeyForKey(@"CARD_ADDED_MESSAGE", [deviceName isEqualToString:@"Apple Watch"]);
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

  dockView = [(PKPaymentSetupTableViewController *)self dockView];
  [dockView setButtonsEnabled:0];

  [(PKPaymentSetupFieldsViewController *)self endUserInteraction];
}

- (void)addDifferentCard:(id)card
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);
  [WeakRetained provisioningViewControllerDidSelectManualEntry:self];
}

- (void)setupLater:(id)later
{
  MEMORY[0x1BFB41980](*MEMORY[0x1E69BA028], 0, later);
  setupDelegate = [(PKPaymentSetupFieldsViewController *)self setupDelegate];
  [setupDelegate viewControllerDidTerminateSetupFlow:self];
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
      bundlePath = [v3 bundlePath];
      LODWORD(v2) = [v2 authorizationStatusForBundlePath:bundlePath];

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
  isComplete = [(PKPaymentSetupFieldsViewController *)self isComplete];

  [(PKPaymentSetupFieldsViewController *)self _setPrimaryButtonEnabled:isComplete];
}

- (PKPaymentProvisioningViewControllerDelegate)flowItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);

  return WeakRetained;
}

@end
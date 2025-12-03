@interface SKUIDonationAmountViewController
- (SKUIDonationAmountViewController)initWithCharity:(id)charity configuration:(id)configuration;
- (void)_amountChangedNotification:(id)notification;
- (void)_cancelButtonAction:(id)action;
- (void)_donateButtonAction:(id)action;
- (void)_finishPurchaseWithResult:(BOOL)result errorMessage:(id)message;
- (void)_finishValidationWithResponse:(id)response error:(id)error;
- (void)_performActionAfterValidation;
- (void)_reenableAfterFailure;
- (void)_setDonationButtonEnabled:(BOOL)enabled;
- (void)_validateDonation:(id)donation;
- (void)dealloc;
- (void)donationConfigurationController:(id)controller didLoadLogoForCharity:(id)charity;
- (void)loadView;
@end

@implementation SKUIDonationAmountViewController

- (SKUIDonationAmountViewController)initWithCharity:(id)charity configuration:(id)configuration
{
  charityCopy = charity;
  configurationCopy = configuration;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDonationAmountViewController initWithCharity:configuration:];
  }

  v13.receiver = self;
  v13.super_class = SKUIDonationAmountViewController;
  v8 = [(SKUIDonationStepViewController *)&v13 initWithCharity:charityCopy configuration:configurationCopy];
  if (v8)
  {
    [configurationCopy addObserver:v8];
    clientContext = [configurationCopy clientContext];
    v10 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"DONATION_FLOW_TITLE"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"DONATION_FLOW_TITLE" inBundles:0];
    }
    v11 = ;
    [(SKUIDonationAmountViewController *)v8 setTitle:v11];
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:0x2828131E8 object:0];

  v4.receiver = self;
  v4.super_class = SKUIDonationAmountViewController;
  [(SKUIDonationAmountViewController *)&v4 dealloc];
}

- (void)loadView
{
  donationConfiguration = [(SKUIDonationStepViewController *)self donationConfiguration];
  clientContext = [donationConfiguration clientContext];

  navigationItem = [(SKUIDonationAmountViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
  v5 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v5 setAction:sel__cancelButtonAction_];
  [v5 setTarget:self];
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"DONATION_FLOW_CANCEL_BUTTON"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"DONATION_FLOW_CANCEL_BUTTON" inBundles:0];
  }
  v6 = ;
  [v5 setTitle:v6];

  [navigationItem setLeftBarButtonItem:v5];
  v7 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v7 setAction:sel__donateButtonAction_];
  [v7 setEnabled:0];
  [v7 setTarget:self];
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"DONATION_FLOW_DONATE_BUTTON"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"DONATION_FLOW_DONATE_BUTTON" inBundles:0];
  }
  v8 = ;
  [v7 setTitle:v8];

  [navigationItem setRightBarButtonItem:v7];
  amountView = self->_amountView;
  if (!amountView)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = [SKUIDonationAmountView alloc];
    charity = [(SKUIDonationStepViewController *)self charity];
    v13 = [(SKUIDonationAmountView *)v11 initWithCharity:charity];
    v14 = self->_amountView;
    self->_amountView = v13;

    v15 = self->_amountView;
    donationConfiguration2 = [(SKUIDonationStepViewController *)self donationConfiguration];
    charity2 = [(SKUIDonationStepViewController *)self charity];
    v18 = [donationConfiguration2 logoImageForCharity:charity2];
    [(SKUIDonationAmountView *)v15 setLogoImage:v18];

    [defaultCenter addObserver:self selector:sel__amountChangedNotification_ name:0x2828131E8 object:self->_amountView];
    amountView = self->_amountView;
  }

  [(SKUIDonationAmountViewController *)self setView:amountView];
}

- (void)donationConfigurationController:(id)controller didLoadLogoForCharity:(id)charity
{
  controllerCopy = controller;
  charityCopy = charity;
  charity = [(SKUIDonationStepViewController *)self charity];

  if (charity == charityCopy)
  {
    amountView = self->_amountView;
    v9 = [controllerCopy logoImageForCharity:charityCopy];
    [(SKUIDonationAmountView *)amountView setLogoImage:v9];
  }
}

- (void)_cancelButtonAction:(id)action
{
  selfCopy = [(SKUIDonationStepViewController *)self donationViewController];
  v5 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  [selfCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)_donateButtonAction:(id)action
{
  amountView = self->_amountView;
  actionCopy = action;
  [(SKUIDonationAmountView *)amountView setUserInteractionEnabled:0];
  [actionCopy setEnabled:0];

  if ([(SKUIGiftValidator *)self->_validator isValidating])
  {
    self->_tappedNextWhileValidating = 1;
  }

  else if (self->_lastValidationResponse)
  {

    [(SKUIDonationAmountViewController *)self _performActionAfterValidation];
  }

  else
  {
    self->_tappedNextWhileValidating = 1;
    selectedAmount = [(SKUIDonationAmountView *)self->_amountView selectedAmount];
    [(SKUIDonationAmountViewController *)self _validateDonation:selectedAmount];
  }
}

- (void)_amountChangedNotification:(id)notification
{
  selectedAmount = [(SKUIDonationAmountView *)self->_amountView selectedAmount];
  if (selectedAmount)
  {
    [(SKUIDonationAmountViewController *)self _setDonationButtonEnabled:1];
    [(SKUIDonationAmountViewController *)self _validateDonation:selectedAmount];
  }

  else
  {
    [(SKUIDonationAmountViewController *)self _setDonationButtonEnabled:0];
    [(SKUIGiftValidator *)self->_validator cancelValidation];
  }
}

- (void)_finishPurchaseWithResult:(BOOL)result errorMessage:(id)message
{
  resultCopy = result;
  messageCopy = message;
  v23 = messageCopy;
  if (resultCopy)
  {
    v7 = [SKUIDonationResultViewController alloc];
    charity = [(SKUIDonationStepViewController *)self charity];
    donationConfiguration = [(SKUIDonationStepViewController *)self donationConfiguration];
    v10 = [(SKUIDonationResultViewController *)v7 initWithCharity:charity configuration:donationConfiguration];

    selectedAmount = [(SKUIDonationAmountView *)self->_amountView selectedAmount];
    [(SKUIDonationResultViewController *)v10 setDonationAmount:selectedAmount];

    operationQueue = [(SKUIDonationStepViewController *)self operationQueue];
    [(SKUIDonationStepViewController *)v10 setOperationQueue:operationQueue];

    navigationController = [(SKUIDonationAmountViewController *)self navigationController];
    [navigationController pushViewController:v10 animated:1];
  }

  else
  {
    if (messageCopy)
    {
      donationConfiguration2 = [(SKUIDonationStepViewController *)self donationConfiguration];
      clientContext = [donationConfiguration2 clientContext];

      v16 = MEMORY[0x277D75110];
      if (clientContext)
      {
        [clientContext localizedStringForKey:@"DONATION_FLOW_UNABLE_TO_DONATE"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"DONATION_FLOW_UNABLE_TO_DONATE" inBundles:0];
      }
      v17 = ;
      v18 = [v16 alertControllerWithTitle:v17 message:v23 preferredStyle:1];

      v19 = MEMORY[0x277D750F8];
      if (clientContext)
      {
        [clientContext localizedStringForKey:@"DONATION_FLOW_OK_BUTTON"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"DONATION_FLOW_OK_BUTTON" inBundles:0];
      }
      v20 = ;
      v21 = [v19 actionWithTitle:v20 style:0 handler:0];
      [v18 addAction:v21];

      [(SKUIDonationAmountViewController *)self presentViewController:v18 animated:1 completion:0];
    }

    [(SKUIDonationAmountViewController *)self _reenableAfterFailure];
  }

  purchaseRequest = self->_purchaseRequest;
  self->_purchaseRequest = 0;
}

- (void)_finishValidationWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  objc_storeStrong(&self->_lastValidationResponse, response);
  selectedAmount = [(SKUIDonationAmountView *)self->_amountView selectedAmount];
  [(SKUIDonationAmountViewController *)self _setDonationButtonEnabled:selectedAmount != 0];

  if (self->_tappedNextWhileValidating)
  {
    self->_tappedNextWhileValidating = 0;
    [(SKUIDonationAmountViewController *)self _performActionAfterValidation];
  }
}

- (void)_performActionAfterValidation
{
  if ([(SKUIGiftValidationResponse *)self->_lastValidationResponse isValid])
  {
    if (!self->_purchaseRequest)
    {
      objc_initWeak(&location, self);
      v3 = [SKUIGiftPurchaseRequest alloc];
      selectedAmount = [(SKUIDonationAmountView *)self->_amountView selectedAmount];
      donationConfiguration = [(SKUIDonationStepViewController *)self donationConfiguration];
      v6 = [(SKUIGiftPurchaseRequest *)v3 initWithDonation:selectedAmount configuration:donationConfiguration];
      purchaseRequest = self->_purchaseRequest;
      self->_purchaseRequest = v6;

      v8 = self->_purchaseRequest;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __65__SKUIDonationAmountViewController__performActionAfterValidation__block_invoke;
      v18[3] = &unk_2781FB158;
      objc_copyWeak(&v19, &location);
      [(SKUIGiftPurchaseRequest *)v8 purchaseWithCompletionBlock:v18];
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    donationConfiguration2 = [(SKUIDonationStepViewController *)self donationConfiguration];
    clientContext = [donationConfiguration2 clientContext];

    v10 = MEMORY[0x277D75110];
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"DONATION_FLOW_INVALID_DONATION"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"DONATION_FLOW_INVALID_DONATION" inBundles:0];
    }
    v11 = ;
    errorString = [(SKUIGiftValidationResponse *)self->_lastValidationResponse errorString];
    v13 = [v10 alertControllerWithTitle:v11 message:errorString preferredStyle:1];

    v14 = MEMORY[0x277D750F8];
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"DONATION_FLOW_OK_BUTTON"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"DONATION_FLOW_OK_BUTTON" inBundles:0];
    }
    v15 = ;
    v16 = [v14 actionWithTitle:v15 style:0 handler:0];
    [v13 addAction:v16];

    [(SKUIDonationAmountViewController *)self presentViewController:v13 animated:1 completion:0];
    [(SKUIDonationAmountViewController *)self _reenableAfterFailure];
  }
}

void __65__SKUIDonationAmountViewController__performActionAfterValidation__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SKUIDonationAmountViewController__performActionAfterValidation__block_invoke_2;
  block[3] = &unk_2781FA318;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __65__SKUIDonationAmountViewController__performActionAfterValidation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishPurchaseWithResult:*(a1 + 48) errorMessage:*(a1 + 32)];
}

- (void)_reenableAfterFailure
{
  [(SKUIDonationAmountView *)self->_amountView setUserInteractionEnabled:1];
  selectedAmount = [(SKUIDonationAmountView *)self->_amountView selectedAmount];
  [(SKUIDonationAmountViewController *)self _setDonationButtonEnabled:selectedAmount != 0];
}

- (void)_setDonationButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationItem = [(SKUIDonationAmountViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];

  if (enabledCopy)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [rightBarButtonItem setEnabled:enabledCopy];
  [rightBarButtonItem setStyle:v5];
}

- (void)_validateDonation:(id)donation
{
  donationCopy = donation;
  validator = self->_validator;
  if (validator)
  {
    [(SKUIGiftValidator *)validator cancelValidation];
  }

  else
  {
    donationConfiguration = [(SKUIDonationStepViewController *)self donationConfiguration];
    v7 = [SKUIGiftValidator alloc];
    donationValidationURL = [donationConfiguration donationValidationURL];
    clientContext = [donationConfiguration clientContext];
    v10 = [(SKUIGiftValidator *)v7 initWithValidationURL:donationValidationURL clientContext:clientContext];
    v11 = self->_validator;
    self->_validator = v10;

    v12 = self->_validator;
    operationQueue = [(SKUIDonationStepViewController *)self operationQueue];
    [(SKUIGiftValidator *)v12 setOperationQueue:operationQueue];
  }

  objc_initWeak(&location, self);
  v14 = self->_validator;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__SKUIDonationAmountViewController__validateDonation___block_invoke;
  v15[3] = &unk_2781FA3B8;
  objc_copyWeak(&v16, &location);
  [(SKUIGiftValidator *)v14 validateDonation:donationCopy withCompletionBlock:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __54__SKUIDonationAmountViewController__validateDonation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SKUIDonationAmountViewController__validateDonation___block_invoke_2;
  block[3] = &unk_2781FA0C8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __54__SKUIDonationAmountViewController__validateDonation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishValidationWithResponse:*(a1 + 32) error:*(a1 + 40)];
}

- (void)initWithCharity:configuration:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDonationAmountViewController initWithCharity:configuration:]";
}

@end
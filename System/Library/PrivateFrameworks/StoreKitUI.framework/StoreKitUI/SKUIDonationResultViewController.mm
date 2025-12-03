@interface SKUIDonationResultViewController
- (SKUIDonationResultViewController)initWithCharity:(id)charity configuration:(id)configuration;
- (void)_doneButtonAction:(id)action;
- (void)donationConfigurationController:(id)controller didLoadLogoForCharity:(id)charity;
- (void)loadView;
@end

@implementation SKUIDonationResultViewController

- (SKUIDonationResultViewController)initWithCharity:(id)charity configuration:(id)configuration
{
  charityCopy = charity;
  configurationCopy = configuration;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDonationResultViewController initWithCharity:configuration:];
  }

  v13.receiver = self;
  v13.super_class = SKUIDonationResultViewController;
  v8 = [(SKUIDonationStepViewController *)&v13 initWithCharity:charityCopy configuration:configurationCopy];
  if (v8)
  {
    [configurationCopy addObserver:v8];
    clientContext = [configurationCopy clientContext];
    v10 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"DONATION_CONFIRM_TITLE"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"DONATION_CONFIRM_TITLE" inBundles:0];
    }
    v11 = ;
    [(SKUIDonationResultViewController *)v8 setTitle:v11];
  }

  return v8;
}

- (void)loadView
{
  donationConfiguration = [(SKUIDonationStepViewController *)self donationConfiguration];
  clientContext = [donationConfiguration clientContext];

  navigationItem = [(SKUIDonationResultViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
  v5 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v5 setAction:sel__doneButtonAction_];
  [v5 setStyle:2];
  [v5 setTarget:self];
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"DONATION_CONFIRM_DONE"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"DONATION_CONFIRM_DONE" inBundles:0];
  }
  v6 = ;
  [v5 setTitle:v6];

  [navigationItem setRightBarButtonItem:v5];
  resultView = self->_resultView;
  if (!resultView)
  {
    v8 = objc_alloc_init(SKUIDonationResultView);
    v9 = self->_resultView;
    self->_resultView = v8;

    v10 = self->_resultView;
    _systemBackgroundColor = [MEMORY[0x277D75348] _systemBackgroundColor];
    [(SKUIDonationResultView *)v10 setBackgroundColor:_systemBackgroundColor];

    v12 = self->_resultView;
    donationConfiguration2 = [(SKUIDonationStepViewController *)self donationConfiguration];
    charity = [(SKUIDonationStepViewController *)self charity];
    v15 = [donationConfiguration2 logoImageForCharity:charity];
    [(SKUIDonationResultView *)v12 setImage:v15];

    if (clientContext)
    {
      [clientContext localizedStringForKey:@"DONATION_CONFIRM_MESSAGE"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"DONATION_CONFIRM_MESSAGE" inBundles:0];
    }
    v16 = ;
    v17 = self->_resultView;
    v18 = MEMORY[0x277CCACA8];
    displayLabel = [(SKUIGiftAmount *)self->_donationAmount displayLabel];
    v20 = [v18 stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:0, displayLabel];
    [(SKUIDonationResultView *)v17 setMessage:v20];

    v21 = self->_resultView;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"DONATION_CONFIRM_THANKS"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"DONATION_CONFIRM_THANKS" inBundles:0];
    }
    v22 = ;
    [(SKUIDonationResultView *)v21 setTitle:v22];

    resultView = self->_resultView;
  }

  [(SKUIDonationResultViewController *)self setView:resultView];
}

- (void)donationConfigurationController:(id)controller didLoadLogoForCharity:(id)charity
{
  controllerCopy = controller;
  charityCopy = charity;
  charity = [(SKUIDonationStepViewController *)self charity];

  if (charity == charityCopy)
  {
    resultView = self->_resultView;
    v9 = [controllerCopy logoImageForCharity:charityCopy];
    [(SKUIDonationResultView *)resultView setImage:v9];
  }
}

- (void)_doneButtonAction:(id)action
{
  selfCopy = [(SKUIDonationStepViewController *)self donationViewController];
  v5 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  [selfCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)initWithCharity:configuration:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDonationResultViewController initWithCharity:configuration:]";
}

@end
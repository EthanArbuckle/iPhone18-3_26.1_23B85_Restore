@interface SKUIDonationResultViewController
- (SKUIDonationResultViewController)initWithCharity:(id)a3 configuration:(id)a4;
- (void)_doneButtonAction:(id)a3;
- (void)donationConfigurationController:(id)a3 didLoadLogoForCharity:(id)a4;
- (void)loadView;
@end

@implementation SKUIDonationResultViewController

- (SKUIDonationResultViewController)initWithCharity:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDonationResultViewController initWithCharity:configuration:];
  }

  v13.receiver = self;
  v13.super_class = SKUIDonationResultViewController;
  v8 = [(SKUIDonationStepViewController *)&v13 initWithCharity:v6 configuration:v7];
  if (v8)
  {
    [v7 addObserver:v8];
    v9 = [v7 clientContext];
    v10 = v9;
    if (v9)
    {
      [v9 localizedStringForKey:@"DONATION_CONFIRM_TITLE"];
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
  v3 = [(SKUIDonationStepViewController *)self donationConfiguration];
  v23 = [v3 clientContext];

  v4 = [(SKUIDonationResultViewController *)self navigationItem];
  [v4 setHidesBackButton:1];
  v5 = objc_alloc_init(MEMORY[0x277D751E0]);
  [v5 setAction:sel__doneButtonAction_];
  [v5 setStyle:2];
  [v5 setTarget:self];
  if (v23)
  {
    [v23 localizedStringForKey:@"DONATION_CONFIRM_DONE"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"DONATION_CONFIRM_DONE" inBundles:0];
  }
  v6 = ;
  [v5 setTitle:v6];

  [v4 setRightBarButtonItem:v5];
  resultView = self->_resultView;
  if (!resultView)
  {
    v8 = objc_alloc_init(SKUIDonationResultView);
    v9 = self->_resultView;
    self->_resultView = v8;

    v10 = self->_resultView;
    v11 = [MEMORY[0x277D75348] _systemBackgroundColor];
    [(SKUIDonationResultView *)v10 setBackgroundColor:v11];

    v12 = self->_resultView;
    v13 = [(SKUIDonationStepViewController *)self donationConfiguration];
    v14 = [(SKUIDonationStepViewController *)self charity];
    v15 = [v13 logoImageForCharity:v14];
    [(SKUIDonationResultView *)v12 setImage:v15];

    if (v23)
    {
      [v23 localizedStringForKey:@"DONATION_CONFIRM_MESSAGE"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"DONATION_CONFIRM_MESSAGE" inBundles:0];
    }
    v16 = ;
    v17 = self->_resultView;
    v18 = MEMORY[0x277CCACA8];
    v19 = [(SKUIGiftAmount *)self->_donationAmount displayLabel];
    v20 = [v18 stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:0, v19];
    [(SKUIDonationResultView *)v17 setMessage:v20];

    v21 = self->_resultView;
    if (v23)
    {
      [v23 localizedStringForKey:@"DONATION_CONFIRM_THANKS"];
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

- (void)donationConfigurationController:(id)a3 didLoadLogoForCharity:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SKUIDonationStepViewController *)self charity];

  if (v7 == v6)
  {
    resultView = self->_resultView;
    v9 = [v10 logoImageForCharity:v6];
    [(SKUIDonationResultView *)resultView setImage:v9];
  }
}

- (void)_doneButtonAction:(id)a3
{
  v4 = [(SKUIDonationStepViewController *)self donationViewController];
  v5 = v4;
  if (!v4)
  {
    v4 = self;
  }

  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)initWithCharity:configuration:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDonationResultViewController initWithCharity:configuration:]";
}

@end
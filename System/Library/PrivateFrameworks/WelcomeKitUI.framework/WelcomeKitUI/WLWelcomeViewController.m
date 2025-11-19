@interface WLWelcomeViewController
- (void)_continueTapped:(id)a3;
- (void)_qrcodeTapped:(id)a3;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation WLWelcomeViewController

- (void)dealloc
{
  _WLLog();
  v4.receiver = self;
  v4.super_class = WLWelcomeViewController;
  [(WLWelcomeViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = WLWelcomeViewController;
  [(WLOnboardingViewController *)&v6 viewDidLoad];
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"qrcode"];
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v3 style:2 target:self action:sel__qrcodeTapped_];
  v5 = [(OBBaseWelcomeController *)self navigationItem];
  [v5 setRightBarButtonItem:v4];
}

- (void)_qrcodeTapped:(id)a3
{
  if (!self->_qrcodeLoaded)
  {
    self->_qrcodeLoaded = 1;
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v4 setObject:MEMORY[0x277CBEC38] forKey:@"qrcode_loaded"];
    [v4 synchronize];
  }

  v5 = [(WLWelcomeViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 screen];
  [v7 scale];
  v9 = v8;

  v11 = [[WLQRCodeDefaultViewController alloc] initWithDefaultQRCode:v9];
  v10 = [(WLWelcomeViewController *)self navigationController];
  [v10 pushViewController:v11 animated:1];
}

- (void)_continueTapped:(id)a3
{
  [(OBTrayButton *)self->_continueButton showsBusyIndicator];
  if (self->_qrcodeLoaded)
  {
    v4 = 1;
  }

  else
  {
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [v5 objectForKey:@"qrcode_loaded"];
    v4 = [v6 BOOLValue];
  }

  v7 = [MEMORY[0x277D7B8D0] sharedInstance];
  [v7 didLoadQRCode:v4];

  continueHandler = self->_continueHandler;
  if (continueHandler)
  {
    v9 = *(continueHandler + 2);

    v9();
  }
}

@end
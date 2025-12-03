@interface WLWelcomeViewController
- (void)_continueTapped:(id)tapped;
- (void)_qrcodeTapped:(id)tapped;
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
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v4];
}

- (void)_qrcodeTapped:(id)tapped
{
  if (!self->_qrcodeLoaded)
  {
    self->_qrcodeLoaded = 1;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setObject:MEMORY[0x277CBEC38] forKey:@"qrcode_loaded"];
    [standardUserDefaults synchronize];
  }

  view = [(WLWelcomeViewController *)self view];
  window = [view window];
  screen = [window screen];
  [screen scale];
  v9 = v8;

  v11 = [[WLQRCodeDefaultViewController alloc] initWithDefaultQRCode:v9];
  navigationController = [(WLWelcomeViewController *)self navigationController];
  [navigationController pushViewController:v11 animated:1];
}

- (void)_continueTapped:(id)tapped
{
  [(OBTrayButton *)self->_continueButton showsBusyIndicator];
  if (self->_qrcodeLoaded)
  {
    bOOLValue = 1;
  }

  else
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [standardUserDefaults objectForKey:@"qrcode_loaded"];
    bOOLValue = [v6 BOOLValue];
  }

  mEMORY[0x277D7B8D0] = [MEMORY[0x277D7B8D0] sharedInstance];
  [mEMORY[0x277D7B8D0] didLoadQRCode:bOOLValue];

  continueHandler = self->_continueHandler;
  if (continueHandler)
  {
    v9 = *(continueHandler + 2);

    v9();
  }
}

@end
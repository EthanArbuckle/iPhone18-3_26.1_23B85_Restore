@interface WLQRCodeDefaultViewController
- (WLQRCodeDefaultViewController)initWithDefaultQRCode:(double)a3;
- (void)_listButtonTapped:(id)a3;
- (void)providerDidProvide:(id)a3;
- (void)pushListViewController;
- (void)requestCodes;
- (void)setIndicatorHidden:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation WLQRCodeDefaultViewController

- (WLQRCodeDefaultViewController)initWithDefaultQRCode:(double)a3
{
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v5 countryCode];
  v7 = [v6 isEqualToString:@"CN"];
  v8 = [WLQRCode alloc];
  v9 = WLLocalizedString();
  v10 = WLLocalizedString();
  if (v7)
  {
    v11 = @"https://support.apple.com/HT201196";
    v12 = @"apple_support";
  }

  else
  {
    v11 = @"https://play.google.com/store/apps/details?id=com.apple.movetoios";
    v12 = @"google_play";
  }

  v13 = [(WLQRCode *)v8 initWithName:v9 title:v10 URL:v11 code:v12 scale:a3];

  v14 = [MEMORY[0x277D7B8D0] sharedInstance];
  [v14 didLoadAndroidStore:v12 selected:0 canceled:0 inAttempts:0];

  v15 = MEMORY[0x277CCACA8];
  v16 = WLLocalizedString();
  v17 = [(WLQRCode *)v13 name];
  v18 = [v15 stringWithFormat:v16, v17];

  v19 = [(WLQRCode *)v13 title];
  v22.receiver = self;
  v22.super_class = WLQRCodeDefaultViewController;
  v20 = [(WLQRCodeDefaultViewController *)&v22 initWithTitle:v19 detailText:v18 symbolName:@"qrcode"];

  if (v20)
  {
    v20->_useGooglePlayStore = v7 ^ 1;
    [(WLQRCodeViewController *)v20 setQrcode:v13];
    v20->_scale = a3;
  }

  return v20;
}

- (void)viewDidLoad
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = WLQRCodeDefaultViewController;
  [(WLOnboardingViewController *)&v18 viewDidLoad];
  v17 = WLLocalizedString();
  v3 = [MEMORY[0x277D37650] linkButton];
  continueButton = self->_continueButton;
  self->_continueButton = v3;

  [(OBLinkTrayButton *)self->_continueButton setTitle:v17 forState:0];
  [(OBLinkTrayButton *)self->_continueButton addTarget:self action:sel__listButtonTapped_ forControlEvents:64];
  v5 = [(WLQRCodeDefaultViewController *)self buttonTray];
  [v5 addButton:self->_continueButton];

  v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  indicatorView = self->_indicatorView;
  self->_indicatorView = v6;

  [(UIActivityIndicatorView *)self->_indicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBLinkTrayButton *)self->_continueButton addSubview:self->_indicatorView];
  v8 = MEMORY[0x277CCAAD0];
  v9 = [(UIActivityIndicatorView *)self->_indicatorView centerXAnchor];
  v10 = [(OBLinkTrayButton *)self->_continueButton centerXAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v19[0] = v11;
  v12 = [(UIActivityIndicatorView *)self->_indicatorView centerYAnchor];
  v13 = [(OBLinkTrayButton *)self->_continueButton centerYAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v19[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [v8 activateConstraints:v15];

  [(UIActivityIndicatorView *)self->_indicatorView stopAnimating];
  [(WLQRCodeDefaultViewController *)self requestCodes];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_listButtonTapped:(id)a3
{
  if (self->_codes)
  {

    [(WLQRCodeDefaultViewController *)self pushListViewController];
  }

  else
  {
    [(WLQRCodeDefaultViewController *)self setIndicatorHidden:0];

    [(WLQRCodeDefaultViewController *)self requestCodes];
  }
}

- (void)requestCodes
{
  [(WLQRCodeProvider *)self->_provider setDelegate:0];
  v3 = [[WLQRCodeProvider alloc] initWithScale:self->_scale];
  provider = self->_provider;
  self->_provider = v3;

  [(WLQRCodeProvider *)self->_provider setUseGooglePlayStore:self->_useGooglePlayStore];
  [(WLQRCodeProvider *)self->_provider setDelegate:self];
  v5 = self->_provider;

  [(WLQRCodeProvider *)v5 request];
}

- (void)setIndicatorHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(OBLinkTrayButton *)self->_continueButton titleLabel];
  v6 = !v3;
  [v5 setHidden:v6];

  indicatorView = self->_indicatorView;
  if (v6)
  {

    [(UIActivityIndicatorView *)indicatorView startAnimating];
  }

  else
  {

    [(UIActivityIndicatorView *)indicatorView stopAnimating];
  }
}

- (void)providerDidProvide:(id)a3
{
  [(WLQRCodeDefaultViewController *)self setCodes:a3];
  if ([(UIActivityIndicatorView *)self->_indicatorView isAnimating])
  {
    [(WLQRCodeDefaultViewController *)self pushListViewController];
  }

  provider = self->_provider;
  self->_provider = 0;
}

- (void)pushListViewController
{
  v6 = WLLocalizedString();
  v3 = WLLocalizedString();
  v4 = [(OBTableWelcomeController *)[WLQRCodeListViewController alloc] initWithTitle:v6 detailText:v3 symbolName:@"qrcode" adoptTableViewScrollView:1];
  [(WLQRCodeListViewController *)v4 setQrcodes:self->_codes];
  v5 = [(WLQRCodeDefaultViewController *)self navigationController];
  [v5 pushViewController:v4 animated:1];
}

@end
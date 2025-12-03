@interface WLQRCodeDefaultViewController
- (WLQRCodeDefaultViewController)initWithDefaultQRCode:(double)code;
- (void)_listButtonTapped:(id)tapped;
- (void)providerDidProvide:(id)provide;
- (void)pushListViewController;
- (void)requestCodes;
- (void)setIndicatorHidden:(BOOL)hidden;
- (void)viewDidLoad;
@end

@implementation WLQRCodeDefaultViewController

- (WLQRCodeDefaultViewController)initWithDefaultQRCode:(double)code
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  countryCode = [currentLocale countryCode];
  v7 = [countryCode isEqualToString:@"CN"];
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

  v13 = [(WLQRCode *)v8 initWithName:v9 title:v10 URL:v11 code:v12 scale:code];

  mEMORY[0x277D7B8D0] = [MEMORY[0x277D7B8D0] sharedInstance];
  [mEMORY[0x277D7B8D0] didLoadAndroidStore:v12 selected:0 canceled:0 inAttempts:0];

  v15 = MEMORY[0x277CCACA8];
  v16 = WLLocalizedString();
  name = [(WLQRCode *)v13 name];
  v18 = [v15 stringWithFormat:v16, name];

  title = [(WLQRCode *)v13 title];
  v22.receiver = self;
  v22.super_class = WLQRCodeDefaultViewController;
  v20 = [(WLQRCodeDefaultViewController *)&v22 initWithTitle:title detailText:v18 symbolName:@"qrcode"];

  if (v20)
  {
    v20->_useGooglePlayStore = v7 ^ 1;
    [(WLQRCodeViewController *)v20 setQrcode:v13];
    v20->_scale = code;
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
  linkButton = [MEMORY[0x277D37650] linkButton];
  continueButton = self->_continueButton;
  self->_continueButton = linkButton;

  [(OBLinkTrayButton *)self->_continueButton setTitle:v17 forState:0];
  [(OBLinkTrayButton *)self->_continueButton addTarget:self action:sel__listButtonTapped_ forControlEvents:64];
  buttonTray = [(WLQRCodeDefaultViewController *)self buttonTray];
  [buttonTray addButton:self->_continueButton];

  v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  indicatorView = self->_indicatorView;
  self->_indicatorView = v6;

  [(UIActivityIndicatorView *)self->_indicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBLinkTrayButton *)self->_continueButton addSubview:self->_indicatorView];
  v8 = MEMORY[0x277CCAAD0];
  centerXAnchor = [(UIActivityIndicatorView *)self->_indicatorView centerXAnchor];
  centerXAnchor2 = [(OBLinkTrayButton *)self->_continueButton centerXAnchor];
  v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v19[0] = v11;
  centerYAnchor = [(UIActivityIndicatorView *)self->_indicatorView centerYAnchor];
  centerYAnchor2 = [(OBLinkTrayButton *)self->_continueButton centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v19[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [v8 activateConstraints:v15];

  [(UIActivityIndicatorView *)self->_indicatorView stopAnimating];
  [(WLQRCodeDefaultViewController *)self requestCodes];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_listButtonTapped:(id)tapped
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

- (void)setIndicatorHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  titleLabel = [(OBLinkTrayButton *)self->_continueButton titleLabel];
  v6 = !hiddenCopy;
  [titleLabel setHidden:v6];

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

- (void)providerDidProvide:(id)provide
{
  [(WLQRCodeDefaultViewController *)self setCodes:provide];
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
  navigationController = [(WLQRCodeDefaultViewController *)self navigationController];
  [navigationController pushViewController:v4 animated:1];
}

@end
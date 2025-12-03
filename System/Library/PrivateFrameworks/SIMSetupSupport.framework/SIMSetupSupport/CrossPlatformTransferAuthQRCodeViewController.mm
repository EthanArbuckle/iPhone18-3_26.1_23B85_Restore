@interface CrossPlatformTransferAuthQRCodeViewController
- (BOOL)isStartOverRequiredOnBackButtonTapped;
- (CrossPlatformTransferAuthQRCodeViewController)init;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_cancelButtonTapped;
- (void)_otherButtonTapped;
- (void)dealloc;
- (void)updateImage;
- (void)viewDidLoad;
@end

@implementation CrossPlatformTransferAuthQRCodeViewController

- (CrossPlatformTransferAuthQRCodeViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TARGET_AUTH_QRCODE_DETAILS" value:&stru_28753DF48 table:@"Localizable"];

  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"qrcode"];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"TARGET_AUTH_QRCODE_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v10.receiver = self;
  v10.super_class = CrossPlatformTransferAuthQRCodeViewController;
  v8 = [(CrossPlatformTransferAuthQRCodeViewController *)&v10 initWithTitle:v7 detailText:v4 icon:v5];

  return v8;
}

- (void)dealloc
{
  v3 = +[DCTCodeManager shared];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CrossPlatformTransferAuthQRCodeViewController;
  [(CrossPlatformTransferAuthQRCodeViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v35.receiver = self;
  v35.super_class = CrossPlatformTransferAuthQRCodeViewController;
  [(TSOBWelcomeController *)&v35 viewDidLoad];
  v3 = +[DCTCodeManager shared];
  [v3 addObserver:self selector:sel_codeDidChange];

  v4 = objc_alloc_init(MEMORY[0x277D755E8]);
  [(CrossPlatformTransferAuthQRCodeViewController *)self setImgView:v4];

  imgView = [(CrossPlatformTransferAuthQRCodeViewController *)self imgView];
  [imgView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(CrossPlatformTransferAuthQRCodeViewController *)self contentView];
  imgView2 = [(CrossPlatformTransferAuthQRCodeViewController *)self imgView];
  [contentView addSubview:imgView2];

  imgView3 = [(CrossPlatformTransferAuthQRCodeViewController *)self imgView];
  centerXAnchor = [imgView3 centerXAnchor];
  view = [(CrossPlatformTransferAuthQRCodeViewController *)self view];
  centerXAnchor2 = [view centerXAnchor];
  v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v12 setActive:1];

  imgView4 = [(CrossPlatformTransferAuthQRCodeViewController *)self imgView];
  topAnchor = [imgView4 topAnchor];
  contentView2 = [(CrossPlatformTransferAuthQRCodeViewController *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v18 setActive:1];

  imgView5 = [(CrossPlatformTransferAuthQRCodeViewController *)self imgView];
  bottomAnchor = [imgView5 bottomAnchor];
  contentView3 = [(CrossPlatformTransferAuthQRCodeViewController *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-40.0];
  [v24 setActive:1];

  [(CrossPlatformTransferAuthQRCodeViewController *)self updateImage];
  linkButton = [MEMORY[0x277D37650] linkButton];
  otherOptionsButton = self->_otherOptionsButton;
  self->_otherOptionsButton = linkButton;

  v27 = self->_otherOptionsButton;
  v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v29 = [v28 localizedStringForKey:@"OTHER_OPTIONS" value:&stru_28753DF48 table:@"Localizable"];
  [(OBLinkTrayButton *)v27 setTitle:v29 forState:0];

  [(OBLinkTrayButton *)self->_otherOptionsButton addTarget:self action:sel__otherButtonTapped forControlEvents:64];
  buttonTray = [(CrossPlatformTransferAuthQRCodeViewController *)self buttonTray];
  [buttonTray addButton:self->_otherOptionsButton];

  v31 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonTapped];
  LODWORD(layoutMarginsGuide2) = +[TSUtilities isPad];
  navigationController = [(CrossPlatformTransferAuthQRCodeViewController *)self navigationController];
  navigationItem = [navigationController navigationItem];
  v34 = navigationItem;
  if (layoutMarginsGuide2)
  {
    [navigationItem setHidesBackButton:1];

    navigationController = [(OBBaseWelcomeController *)self navigationItem];
    [navigationController setRightBarButtonItem:v31];
  }

  else
  {
    [navigationItem setHidesBackButton:0];
  }
}

- (void)updateImage
{
  v3 = +[DCTCodeManager shared];
  code = [v3 code];

  qrCode = [code qrCode];
  v5 = [MEMORY[0x277D755B8] imageWithCIImage:qrCode];
  imgView = [(CrossPlatformTransferAuthQRCodeViewController *)self imgView];
  [imgView setImage:v5];
}

- (void)_otherButtonTapped
{
  self->_isOtherButtonTapped = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];
}

- (void)_cancelButtonTapped
{
  self->_isCancelButtonTapped = 1;
  delegate = [(CrossPlatformTransferAuthQRCodeViewController *)self delegate];
  [delegate userDidTapCancel];
}

- (BOOL)isStartOverRequiredOnBackButtonTapped
{
  delegate = [(CrossPlatformTransferAuthQRCodeViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CrossPlatformTransferAuthQRCodeViewController *)self delegate];
    [delegate2 backButtonClicked:self];
  }

  return 0;
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
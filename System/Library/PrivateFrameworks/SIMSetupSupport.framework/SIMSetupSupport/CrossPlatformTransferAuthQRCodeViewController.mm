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

  v5 = [(CrossPlatformTransferAuthQRCodeViewController *)self imgView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(CrossPlatformTransferAuthQRCodeViewController *)self contentView];
  v7 = [(CrossPlatformTransferAuthQRCodeViewController *)self imgView];
  [v6 addSubview:v7];

  v8 = [(CrossPlatformTransferAuthQRCodeViewController *)self imgView];
  v9 = [v8 centerXAnchor];
  v10 = [(CrossPlatformTransferAuthQRCodeViewController *)self view];
  v11 = [v10 centerXAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [(CrossPlatformTransferAuthQRCodeViewController *)self imgView];
  v14 = [v13 topAnchor];
  v15 = [(CrossPlatformTransferAuthQRCodeViewController *)self contentView];
  v16 = [v15 layoutMarginsGuide];
  v17 = [v16 topAnchor];
  v18 = [v14 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [(CrossPlatformTransferAuthQRCodeViewController *)self imgView];
  v20 = [v19 bottomAnchor];
  v21 = [(CrossPlatformTransferAuthQRCodeViewController *)self contentView];
  v22 = [v21 layoutMarginsGuide];
  v23 = [v22 bottomAnchor];
  v24 = [v20 constraintEqualToAnchor:v23 constant:-40.0];
  [v24 setActive:1];

  [(CrossPlatformTransferAuthQRCodeViewController *)self updateImage];
  v25 = [MEMORY[0x277D37650] linkButton];
  otherOptionsButton = self->_otherOptionsButton;
  self->_otherOptionsButton = v25;

  v27 = self->_otherOptionsButton;
  v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v29 = [v28 localizedStringForKey:@"OTHER_OPTIONS" value:&stru_28753DF48 table:@"Localizable"];
  [(OBLinkTrayButton *)v27 setTitle:v29 forState:0];

  [(OBLinkTrayButton *)self->_otherOptionsButton addTarget:self action:sel__otherButtonTapped forControlEvents:64];
  v30 = [(CrossPlatformTransferAuthQRCodeViewController *)self buttonTray];
  [v30 addButton:self->_otherOptionsButton];

  v31 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelButtonTapped];
  LODWORD(v22) = +[TSUtilities isPad];
  v32 = [(CrossPlatformTransferAuthQRCodeViewController *)self navigationController];
  v33 = [v32 navigationItem];
  v34 = v33;
  if (v22)
  {
    [v33 setHidesBackButton:1];

    v32 = [(OBBaseWelcomeController *)self navigationItem];
    [v32 setRightBarButtonItem:v31];
  }

  else
  {
    [v33 setHidesBackButton:0];
  }
}

- (void)updateImage
{
  v3 = +[DCTCodeManager shared];
  v7 = [v3 code];

  v4 = [v7 qrCode];
  v5 = [MEMORY[0x277D755B8] imageWithCIImage:v4];
  v6 = [(CrossPlatformTransferAuthQRCodeViewController *)self imgView];
  [v6 setImage:v5];
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
  v2 = [(CrossPlatformTransferAuthQRCodeViewController *)self delegate];
  [v2 userDidTapCancel];
}

- (BOOL)isStartOverRequiredOnBackButtonTapped
{
  v3 = [(CrossPlatformTransferAuthQRCodeViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CrossPlatformTransferAuthQRCodeViewController *)self delegate];
    [v5 backButtonClicked:self];
  }

  return 0;
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
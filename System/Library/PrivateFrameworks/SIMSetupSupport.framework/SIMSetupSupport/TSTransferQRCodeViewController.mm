@interface TSTransferQRCodeViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSTransferQRCodeViewController)initWithTransferCredentials:(id)credentials carrierName:(id)name;
- (void)_userDidTapCancel;
- (void)viewDidLoad;
@end

@implementation TSTransferQRCodeViewController

- (TSTransferQRCodeViewController)initWithTransferCredentials:(id)credentials carrierName:(id)name
{
  credentialsCopy = credentials;
  nameCopy = name;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"TRANSFER_ESIM_DETAIL" value:&stru_28753DF48 table:@"Localizable"];

  v11 = [MEMORY[0x277D755B8] systemImageNamed:@"qrcode"];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"TRANSFER_ESIM" value:&stru_28753DF48 table:@"Localizable"];
  v18.receiver = self;
  v18.super_class = TSTransferQRCodeViewController;
  v14 = [(TSTransferQRCodeViewController *)&v18 initWithTitle:v13 detailText:v10 icon:v11];

  if (v14)
  {
    objc_storeStrong(&v14->_transferCredentials, credentials);
    objc_storeStrong(&v14->_carrierName, name);
    v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v14 action:sel__userDidTapCancel];
    cancelButton = v14->_cancelButton;
    v14->_cancelButton = v15;
  }

  return v14;
}

- (void)viewDidLoad
{
  v40 = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = TSTransferQRCodeViewController;
  [(TSOBWelcomeController *)&v35 viewDidLoad];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:self->_cancelButton];

  qrCode = [(NSString *)self->_transferCredentials qrCode];
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    transferCredentials = self->_transferCredentials;
    *buf = 138412546;
    v37 = transferCredentials;
    v38 = 2080;
    v39 = "[TSTransferQRCodeViewController viewDidLoad]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "generate CIImage with transferCredentials: %@ @%s", buf, 0x16u);
  }

  v7 = objc_alloc(MEMORY[0x277D755E8]);
  v8 = [objc_alloc(MEMORY[0x277D755B8]) initWithCIImage:qrCode];
  v9 = [v7 initWithImage:v8];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(TSTransferQRCodeViewController *)self view];
  [view addSubview:v9];

  v11 = objc_opt_new();
  if ([(NSString *)self->_carrierName length])
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"%@_CELLULAR_PLAN" value:&stru_28753DF48 table:@"Localizable"];
    v15 = [v12 stringWithFormat:v14, self->_carrierName];
    [v11 setText:v15];
  }

  else
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CELLULAR_PLAN" value:&stru_28753DF48 table:@"Localizable"];
    [v11 setText:v14];
  }

  [v11 setNumberOfLines:0];
  [v11 setAdjustsFontSizeToFitWidth:1];
  [v11 setLineBreakMode:0];
  [v11 setTextAlignment:1];
  v16 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
  [v11 setFont:v16];

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [v11 setTextColor:systemGrayColor];

  [v11 setFrame:{0.0, 0.0, 40.0, 20.0}];
  view2 = [(TSTransferQRCodeViewController *)self view];
  [view2 addSubview:v11];

  [v11 setIsAccessibilityElement:1];
  text = [v11 text];
  [v11 setAccessibilityLabel:text];

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  centerXAnchor = [v9 centerXAnchor];
  view3 = [(TSTransferQRCodeViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v23 setActive:1];

  topAnchor = [v9 topAnchor];
  contentView = [(TSTransferQRCodeViewController *)self contentView];
  bottomAnchor = [contentView bottomAnchor];
  v27 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  [v27 setActive:1];

  topAnchor2 = [v11 topAnchor];
  bottomAnchor2 = [v9 bottomAnchor];
  v30 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:15.0];
  [v30 setActive:1];

  centerXAnchor3 = [v11 centerXAnchor];
  centerXAnchor4 = [v9 centerXAnchor];
  v33 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v33 setActive:1];

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_userDidTapCancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userDidTapCancel];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
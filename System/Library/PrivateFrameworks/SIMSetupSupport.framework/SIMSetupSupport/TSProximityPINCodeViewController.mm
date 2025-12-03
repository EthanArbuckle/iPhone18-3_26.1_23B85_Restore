@interface TSProximityPINCodeViewController
- (TSProximityPINCodeViewController)initWithPIN:(id)n;
- (TSSIMSetupFlowDelegate)delegate;
- (void)updatePIN:(id)n;
- (void)viewDidLoad;
@end

@implementation TSProximityPINCodeViewController

- (TSProximityPINCodeViewController)initWithPIN:(id)n
{
  nCopy = n;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"PROXIMITY_TRANSFER_PIN_CODE_DETAIL" value:&stru_28753DF48 table:@"Localizable"];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PROXIMITY_TRANSFER_PIN_CODE_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v12.receiver = self;
  v12.super_class = TSProximityPINCodeViewController;
  v10 = [(TSProximityPINCodeViewController *)&v12 initWithTitle:v9 detailText:v7 icon:0 contentLayout:2];

  if (v10)
  {
    objc_storeStrong(&v10->_pin, n);
  }

  return v10;
}

- (void)updatePIN:(id)n
{
  nCopy = n;
  objc_storeStrong(&self->_pin, n);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__TSProximityPINCodeViewController_updatePIN___block_invoke;
  v7[3] = &unk_279B44490;
  v7[4] = self;
  v8 = nCopy;
  v6 = nCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __46__TSProximityPINCodeViewController_updatePIN___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) pinCodeLabel];
  [v2 setText:v1];
}

- (void)viewDidLoad
{
  v28[3] = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = TSProximityPINCodeViewController;
  [(TSOBWelcomeController *)&v27 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D756B8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  pinCodeLabel = self->_pinCodeLabel;
  self->_pinCodeLabel = v4;

  [(UILabel *)self->_pinCodeLabel setNumberOfLines:0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)self->_pinCodeLabel setTextColor:labelColor];

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [(UILabel *)self->_pinCodeLabel setBackgroundColor:systemBackgroundColor];

  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769A8]];
  [(UILabel *)self->_pinCodeLabel setFont:v8];

  [(UILabel *)self->_pinCodeLabel setTextAlignment:1];
  [(UILabel *)self->_pinCodeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v9) = 1148846080;
  [(UILabel *)self->_pinCodeLabel setContentHuggingPriority:1 forAxis:v9];
  [(UILabel *)self->_pinCodeLabel setText:self->_pin];
  contentView = [(TSProximityPINCodeViewController *)self contentView];
  [contentView addSubview:self->_pinCodeLabel];

  v22 = MEMORY[0x277CCAAD0];
  centerXAnchor = [(UILabel *)self->_pinCodeLabel centerXAnchor];
  contentView2 = [(TSProximityPINCodeViewController *)self contentView];
  centerXAnchor2 = [contentView2 centerXAnchor];
  v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v28[0] = v23;
  centerYAnchor = [(UILabel *)self->_pinCodeLabel centerYAnchor];
  view = [(TSProximityPINCodeViewController *)self view];
  centerYAnchor2 = [view centerYAnchor];
  v14 = [centerYAnchor constraintGreaterThanOrEqualToAnchor:centerYAnchor2];
  v28[1] = v14;
  topAnchor = [(UILabel *)self->_pinCodeLabel topAnchor];
  headerView = [(TSProximityPINCodeViewController *)self headerView];
  bottomAnchor = [headerView bottomAnchor];
  v18 = [topAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor];
  v28[2] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  [v22 activateConstraints:v19];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setCancelNavigationBarItems:self];

  v21 = *MEMORY[0x277D85DE8];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
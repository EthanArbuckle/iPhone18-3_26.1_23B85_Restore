@interface TSPRXStartViewController
- (TSPRXStartViewController)initWithBtDevice:(id)device;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_startClientFlow;
- (void)viewDidLoad;
@end

@implementation TSPRXStartViewController

- (TSPRXStartViewController)initWithBtDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = TSPRXStartViewController;
  v6 = [(TSPRXStartViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, device);
  }

  return v7;
}

- (void)viewDidLoad
{
  v61[5] = *MEMORY[0x277D85DE8];
  v60.receiver = self;
  v60.super_class = TSPRXStartViewController;
  [(TSPRXStartViewController *)&v60 viewDidLoad];
  v3 = +[TSUtilities isPad];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"TRANSFER_SIM";
  }

  else
  {
    v6 = @"PRXCARD_START_TITLE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_28753DF48 table:@"Localizable"];
  [(TSPRXStartViewController *)self setTitle:v7];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PRXCARD_START_SUBTITLE" value:&stru_28753DF48 table:@"Localizable"];
  [(TSPRXStartViewController *)self setSubtitle:v9];

  [(TSPRXStartViewController *)self setDismissalType:3];
  v56 = [MEMORY[0x277D755B8] systemImageNamed:@"antenna.radiowaves.left.and.right"];
  v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v56];
  radioImageView = self->_radioImageView;
  self->_radioImageView = v10;

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [(UIImageView *)self->_radioImageView setTintColor:systemBlueColor];

  [(UIImageView *)self->_radioImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(TSPRXStartViewController *)self contentView];
  [contentView addSubview:self->_radioImageView];

  objc_initWeak(&location, self);
  v14 = MEMORY[0x277D432F0];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __39__TSPRXStartViewController_viewDidLoad__block_invoke;
  v57[3] = &unk_279B448A0;
  objc_copyWeak(&v58, &location);
  v17 = [v14 actionWithTitle:v16 style:0 handler:v57];
  action = self->_action;
  self->_action = v17;

  v19 = [(TSPRXStartViewController *)self addAction:self->_action];
  contentView2 = [(TSPRXStartViewController *)self contentView];
  [contentView2 bounds];
  v22 = v21;
  v24 = v23;

  [v56 size];
  v26 = v25;
  [v56 size];
  v28 = v24 * 0.3 / v27;
  if (v22 * 0.3 / v26 >= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v22 * 0.3 / v26;
  }

  [v56 size];
  v31 = v30;
  [v56 size];
  v33 = v32;
  v44 = MEMORY[0x277CCAAD0];
  topAnchor = [(UIImageView *)self->_radioImageView topAnchor];
  contentView3 = [(TSPRXStartViewController *)self contentView];
  mainContentGuide = [contentView3 mainContentGuide];
  topAnchor2 = [mainContentGuide topAnchor];
  v51 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v61[0] = v51;
  centerXAnchor = [(UIImageView *)self->_radioImageView centerXAnchor];
  contentView4 = [(TSPRXStartViewController *)self contentView];
  mainContentGuide2 = [contentView4 mainContentGuide];
  centerXAnchor2 = [mainContentGuide2 centerXAnchor];
  v46 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v61[1] = v46;
  centerYAnchor = [(UIImageView *)self->_radioImageView centerYAnchor];
  contentView5 = [(TSPRXStartViewController *)self contentView];
  mainContentGuide3 = [contentView5 mainContentGuide];
  centerYAnchor2 = [mainContentGuide3 centerYAnchor];
  v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v61[2] = v37;
  widthAnchor = [(UIImageView *)self->_radioImageView widthAnchor];
  v39 = [widthAnchor constraintEqualToConstant:v29 * v31];
  v61[3] = v39;
  heightAnchor = [(UIImageView *)self->_radioImageView heightAnchor];
  v41 = [heightAnchor constraintEqualToConstant:v29 * v33];
  v61[4] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:5];
  [v44 activateConstraints:v42];

  objc_destroyWeak(&v58);
  objc_destroyWeak(&location);

  v43 = *MEMORY[0x277D85DE8];
}

void __39__TSPRXStartViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startClientFlow];
}

- (void)_startClientFlow
{
  v10 = *MEMORY[0x277D85DE8];
  [(PRXAction *)self->_action setEnabled:0];
  [(TSPRXStartViewController *)self showActivityIndicatorWithStatus:&stru_28753DF48];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[TSPRXStartViewController _startClientFlow]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "activate client @%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  client = self->_client;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__TSPRXStartViewController__startClientFlow__block_invoke;
  v6[3] = &unk_279B44828;
  objc_copyWeak(&v7, buf);
  [(SSProximityDevice *)client activateUsingPreSharedKey:0 completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __44__TSPRXStartViewController__startClientFlow__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__TSPRXStartViewController__startClientFlow__block_invoke_cold_1(v3, v4);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [WeakRetained delegate];
    v7 = objc_loadWeakRetained((a1 + 32));
    [v6 viewControllerDidComplete:v7];
  }
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __44__TSPRXStartViewController__startClientFlow__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2080;
  v6 = "[TSPRXStartViewController _startClientFlow]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]activate bt client failed : %@ @%s", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end
@interface WLTransferringViewController
- (WLTransferringViewController)initWithSourceDevice:(id)a3 welcomeController:(id)a4 showsTips:(BOOL)a5;
- (void)_cancelRemainingDownloadTimeUpdateTimer;
- (void)addProgressBar;
- (void)cancel;
- (void)dealloc;
- (void)removeProgressBar;
- (void)setIsImporting:(BOOL)a3;
- (void)setProgress:(double)a3;
- (void)setProgressText:(id)a3;
- (void)setRemainingDownloadTime:(double)a3;
- (void)showActivityIndicatorView;
- (void)tipsButtonPressed:(id)a3;
- (void)updateProgressText;
- (void)viewDidLoad;
@end

@implementation WLTransferringViewController

- (WLTransferringViewController)initWithSourceDevice:(id)a3 welcomeController:(id)a4 showsTips:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = WLLocalizedString();
  v10 = MEMORY[0x277D755B8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v10 imageNamed:@"MoveToiOS" inBundle:v11];
  v33.receiver = self;
  v33.super_class = WLTransferringViewController;
  v13 = [(OBSetupAssistantProgressController *)&v33 initWithTitle:v9 detailText:0 icon:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_welcomeController, a4);
    v14 = [(OBBaseWelcomeController *)v13 navigationItem];
    [v14 setTitle:&stru_2882D7420];

    v15 = [(OBBaseWelcomeController *)v13 navigationItem];
    [v15 setHidesBackButton:1 animated:0];

    v16 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"PROGRESS_TRANSFERRING_TEXT"];
    v17 = WLLocalizedString();
    transferProgressDescription = v13->_transferProgressDescription;
    v13->_transferProgressDescription = v17;

    v19 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"PROGRESS_IMPORTING_TEXT"];
    v20 = WLLocalizedString();
    importProgressDescription = v13->_importProgressDescription;
    v13->_importProgressDescription = v20;

    if (v5)
    {
      v22 = [MEMORY[0x277D37650] linkButton];
      v23 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"PROGRESS_LEARN_HOW_TO_USE"];
      v24 = WLLocalizedString();
      [v22 setTitle:v24 forState:0];

      [v22 addTarget:v13 action:sel_tipsButtonPressed_ forControlEvents:64];
      v25 = MEMORY[0x277D755B8];
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v27 = [v25 imageNamed:@"tips" inBundle:v26];

      v28 = [MEMORY[0x277D75230] plainButtonConfiguration];
      [v28 setImage:v27];
      [v28 setImagePlacement:1];
      [v28 setImagePadding:20.0];
      [v22 setConfiguration:v28];
      v29 = [(WLTransferringViewController *)v13 buttonTray];
      [v29 addButton:v22];
    }

    v30 = objc_alloc_init(MEMORY[0x277CCA958]);
    remainingDownloadTimeFormatter = v13->_remainingDownloadTimeFormatter;
    v13->_remainingDownloadTimeFormatter = v30;

    [(NSDateComponentsFormatter *)v13->_remainingDownloadTimeFormatter setUnitsStyle:3];
    [(NSDateComponentsFormatter *)v13->_remainingDownloadTimeFormatter setAllowedUnits:96];
    [(NSDateComponentsFormatter *)v13->_remainingDownloadTimeFormatter setIncludesApproximationPhrase:1];
  }

  return v13;
}

- (void)dealloc
{
  [(WLTransferringViewController *)self removeProgressBar];
  [(WLTransferringViewController *)self _cancelRemainingDownloadTimeUpdateTimer];
  v3.receiver = self;
  v3.super_class = WLTransferringViewController;
  [(WLTransferringViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = WLTransferringViewController;
  [(WLOnboardingProgressViewController *)&v7 viewDidLoad];
  if (self->_showCancelButton)
  {
    v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancel];
    v4 = [(OBBaseWelcomeController *)self navigationItem];
    [v4 setLeftBarButtonItem:v3];
  }

  v5 = WLLocalizedString();
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", v5, self->_transferProgressDescription];
  [(WLTransferringViewController *)self setProgressText:v6];
}

- (void)cancel
{
  if (self->_cancellationBlock)
  {
    objc_initWeak(&location, self);
    cancellationBlock = self->_cancellationBlock;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__WLTransferringViewController_cancel__block_invoke;
    v6[3] = &unk_279EB8E18;
    objc_copyWeak(&v7, &location);
    cancellationBlock[2](cancellationBlock, v6);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = [(WLTransferringViewController *)self navigationController];
    v4 = [v5 popViewControllerAnimated:1];
  }
}

void __38__WLTransferringViewController_cancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showActivityIndicatorView];
}

- (void)showActivityIndicatorView
{
  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v5 startAnimating];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v5];
  v4 = [(OBBaseWelcomeController *)self navigationItem];
  [v4 setLeftBarButtonItem:v3];
}

- (void)setProgress:(double)a3
{
  self->_progress = a3;
  [(WLProgressBar *)self->_progressBar setProgress:?];
  v5.receiver = self;
  v5.super_class = WLTransferringViewController;
  [(OBSetupAssistantProgressController *)&v5 setProgress:a3];
}

- (void)setProgressText:(id)a3
{
  v4.receiver = self;
  v4.super_class = WLTransferringViewController;
  [(OBSetupAssistantProgressController *)&v4 setProgressText:a3];
  [(WLTransferringViewController *)self _cancelRemainingDownloadTimeUpdateTimer];
}

- (void)setRemainingDownloadTime:(double)a3
{
  if (a3 < 60.0)
  {
    a3 = 60.0;
  }

  self->_remainingDownloadTime = a3;
  if (!self->_remainingDownloadTimeUpdateTimer)
  {
    _WLLog();
    objc_initWeak(&location, self);
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    remainingDownloadTimeUpdateTimer = self->_remainingDownloadTimeUpdateTimer;
    self->_remainingDownloadTimeUpdateTimer = v4;

    v6 = self->_remainingDownloadTimeUpdateTimer;
    v7 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v6, v7, 0x3B9ACA00uLL, 0xBEBC200uLL);
    v8 = self->_remainingDownloadTimeUpdateTimer;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__WLTransferringViewController_setRemainingDownloadTime___block_invoke;
    v9[3] = &unk_279EB8E18;
    objc_copyWeak(&v10, &location);
    dispatch_source_set_event_handler(v8, v9);
    dispatch_activate(self->_remainingDownloadTimeUpdateTimer);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __57__WLTransferringViewController_setRemainingDownloadTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateProgressText];
}

- (void)updateProgressText
{
  if (self->_isImporting)
  {
    completedOperationCount = self->_completedOperationCount;
    totalOperationCount = self->_totalOperationCount;
    _WLLog();
    v3 = MEMORY[0x277CCACA8];
    v4 = WLLocalizedString();
    v5 = self->_completedOperationCount;
    v6 = [v3 localizedStringWithFormat:v4, v5, self->_totalOperationCount];

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", v6, self->_importProgressDescription];
  }

  else
  {
    v8 = [(NSDateComponentsFormatter *)self->_remainingDownloadTimeFormatter stringFromTimeInterval:self->_remainingDownloadTime];
    _WLLog();
    v9 = MEMORY[0x277CCACA8];
    v10 = WLLocalizedString();
    v6 = [v9 stringWithFormat:v10, v8];

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", v6, self->_transferProgressDescription];
  }

  [(WLProgressBar *)self->_progressBar setProgressText:v6];
  v13.receiver = self;
  v13.super_class = WLTransferringViewController;
  [(OBSetupAssistantProgressController *)&v13 setProgressText:v7];
}

- (void)_cancelRemainingDownloadTimeUpdateTimer
{
  remainingDownloadTimeUpdateTimer = self->_remainingDownloadTimeUpdateTimer;
  if (remainingDownloadTimeUpdateTimer)
  {
    dispatch_source_cancel(remainingDownloadTimeUpdateTimer);
    v4 = self->_remainingDownloadTimeUpdateTimer;
    self->_remainingDownloadTimeUpdateTimer = 0;
  }
}

- (void)setIsImporting:(BOOL)a3
{
  self->_isImporting = a3;
  if (a3)
  {
    v4 = WLLocalizedString();
    [(OBSetupAssistantProgressController *)self setTitle:v4];

    v5 = MEMORY[0x277CCACA8];
    v6 = WLLocalizedString();
    v7 = [v5 stringWithFormat:@"%@\n\n%@", v6, self->_importProgressDescription];

    v8.receiver = self;
    v8.super_class = WLTransferringViewController;
    [(OBSetupAssistantProgressController *)&v8 setProgressText:v7];
  }
}

- (void)tipsButtonPressed:(id)a3
{
  v5 = [[WLTipsListViewController alloc] initWithItems];
  v4 = [(WLTransferringViewController *)self navigationController];
  [v4 pushViewController:v5 animated:1];

  [(WLTransferringViewController *)self addProgressBar];
}

- (void)removeProgressBar
{
  [(WLProgressBar *)self->_progressBar removeFromSuperview];
  progressBar = self->_progressBar;
  self->_progressBar = 0;
}

- (void)addProgressBar
{
  v24[4] = *MEMORY[0x277D85DE8];
  [(WLTransferringViewController *)self removeProgressBar];
  v3 = [WLProgressBar alloc];
  v4 = [(WLProgressBar *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  progressBar = self->_progressBar;
  self->_progressBar = v4;

  [(WLProgressBar *)self->_progressBar setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(WLTransferringViewController *)self navigationController];
  v7 = [v6 view];

  [v7 addSubview:self->_progressBar];
  v19 = MEMORY[0x277CCAAD0];
  v23 = [(WLProgressBar *)self->_progressBar topAnchor];
  v22 = [v7 bottomAnchor];
  +[WLProgressBar height];
  v21 = [v23 constraintEqualToAnchor:v22 constant:-v8];
  v24[0] = v21;
  v20 = [(WLProgressBar *)self->_progressBar leadingAnchor];
  v18 = [v7 leadingAnchor];
  v17 = [v20 constraintEqualToAnchor:v18];
  v24[1] = v17;
  v9 = [(WLProgressBar *)self->_progressBar trailingAnchor];
  v10 = [v7 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v24[2] = v11;
  v12 = [(WLProgressBar *)self->_progressBar bottomAnchor];
  v13 = [v7 bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v24[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
  [v19 activateConstraints:v15];

  if (self->_progress > 0.0)
  {
    [(WLProgressBar *)self->_progressBar setProgress:?];
  }

  if (self->_remainingDownloadTime > 0.0)
  {
    [(WLTransferringViewController *)self updateProgressText];
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end
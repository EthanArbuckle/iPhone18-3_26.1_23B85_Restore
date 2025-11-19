@interface WFInteractionDialogViewController
- (BOOL)canHandleFollowUpRequest:(id)a3;
- (BOOL)showCheckmarkOnAppear;
- (double)contentHeightForWidth:(double)a3 withMaximumVisibleHeight:(double)a4;
- (void)handleFollowUpRequest:(id)a3;
- (void)interactionCardViewControllerDidLoad:(id)a3;
- (void)interactionCardViewControllerDidRequestCancel:(id)a3;
- (void)interactionCardViewControllerDidRequestPunchout:(id)a3;
- (void)loadView;
- (void)showProgressWithEvent:(unint64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation WFInteractionDialogViewController

- (void)interactionCardViewControllerDidRequestCancel:(id)a3
{
  v4 = [(WFInteractionDialogViewController *)self followUpRequest];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(WFCompactDialogViewController *)self request];
  }

  v9 = v6;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0x277D79E88;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v7 = 0x277D79FA8;
  }

  v8 = [objc_alloc(*v7) initWithInteractionResponseCode:0];
  [(WFCompactDialogViewController *)self finishWithResponse:v8];

LABEL_9:
}

- (void)interactionCardViewControllerDidRequestPunchout:(id)a3
{
  v4 = [(WFInteractionDialogViewController *)self followUpRequest];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(WFCompactDialogViewController *)self request];
  }

  v10 = v6;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0x277D79E88;
    v8 = 2;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v7 = 0x277D79FA8;
    v8 = 1;
  }

  v9 = [objc_alloc(*v7) initWithInteractionResponseCode:v8];
  [(WFCompactDialogViewController *)self finishWithResponse:v9];

LABEL_9:
}

- (void)interactionCardViewControllerDidLoad:(id)a3
{
  v4 = [(WFInteractionDialogViewController *)self confirmAction];
  [v4 setEnabled:1];

  [(WFCompactPlatterViewController *)self scrollToTopAnimated:0];
}

- (void)handleFollowUpRequest:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = WFInteractionDialogViewController;
  [(WFCompactDialogViewController *)&v18 handleFollowUpRequest:v4];
  [(WFInteractionDialogViewController *)self setFollowUpRequest:v4];
  v5 = [v4 promptForDisplay];
  v6 = [(WFCompactPlatterViewController *)self platterView];
  [v6 setPrimaryText:v5];

  v7 = [v4 interaction];
  v8 = [(WFInteractionDialogViewController *)self cardViewController];
  [v8 updateWithInteraction:v7];

  if ([v7 intentHandlingStatus] == 3)
  {
    [(WFInteractionDialogViewController *)self showProgressWithEvent:1];
  }

  objc_initWeak(&location, self);
  v9 = [v4 doneButton];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __59__WFInteractionDialogViewController_handleFollowUpRequest___block_invoke;
  v15 = &unk_279EE8908;
  objc_copyWeak(&v16, &location);
  v10 = [WFCompactDialogAction actionForButton:v9 handler:&v12];

  v19[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:{1, v12, v13, v14, v15}];
  [(WFCompactDialogViewController *)self configureActionGroupWithActions:v11];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __59__WFInteractionDialogViewController_handleFollowUpRequest___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = getWFDialogLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[WFInteractionDialogViewController handleFollowUpRequest:]_block_invoke";
    _os_log_impl(&dword_274719000, v2, OS_LOG_TYPE_DEFAULT, "%s Finished interaction", &v4, 0xCu);
  }

  v3 = [objc_alloc(MEMORY[0x277D79FA8]) initWithInteractionResponseCode:0];
  [WeakRetained finishWithResponse:v3];
}

- (BOOL)canHandleFollowUpRequest:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WFInteractionDialogViewController;
  [(WFInteractionDialogViewController *)&v4 viewDidAppear:a3];
  if ([(WFInteractionDialogViewController *)self showCheckmarkOnAppear])
  {
    [(WFInteractionDialogViewController *)self showProgressWithEvent:1];
  }
}

- (BOOL)showCheckmarkOnAppear
{
  v2 = [(WFCompactDialogViewController *)self request];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 interaction];
    v4 = [v3 intent];
    v5 = [v4 _intentCategory];

    v7 = [v3 intentHandlingStatus] == 3 && v5 != 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)showProgressWithEvent:(unint64_t)a3
{
  [(WFCompactPlatterViewController *)self setPlatterHeightAnimationsDisabled:1];
  v5 = [(WFCompactPlatterViewController *)self platterView];
  [v5 setFooterViewHidden:0];

  v6 = [(WFInteractionDialogViewController *)self progressViewController];
  [v6 handleEvent:a3];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__WFInteractionDialogViewController_showProgressWithEvent___block_invoke;
  block[3] = &unk_279EE8A78;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (double)contentHeightForWidth:(double)a3 withMaximumVisibleHeight:(double)a4
{
  v5 = [(WFInteractionDialogViewController *)self cardViewController:a3];
  [v5 contentHeightForWidth:a3];
  v7 = v6;

  return v7;
}

- (void)loadView
{
  v54[2] = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = WFInteractionDialogViewController;
  [(WFCompactDialogViewController *)&v50 loadView];
  v2 = [(WFCompactPlatterViewController *)self platterView];
  [v2 setAccessibilityIdentifier:@"junior_interaction_platter_view"];

  v42 = [(WFCompactDialogViewController *)self request];
  if (v42)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [v42 interaction];
      objc_initWeak(location, self);
      v3 = [v42 cancelButton];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __45__WFInteractionDialogViewController_loadView__block_invoke;
      v48[3] = &unk_279EE8908;
      objc_copyWeak(&v49, location);
      v4 = [WFCompactDialogAction actionForButton:v3 handler:v48];

      v5 = [v42 confirmButton];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __45__WFInteractionDialogViewController_loadView__block_invoke_209;
      v46[3] = &unk_279EE8908;
      objc_copyWeak(&v47, location);
      v6 = [WFCompactDialogAction actionForButton:v5 handler:v46];

      [v6 setEnabled:0];
      [(WFInteractionDialogViewController *)self setConfirmAction:v6];
      v54[0] = v4;
      v54[1] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
      [(WFCompactDialogViewController *)self configureActionGroupWithActions:v7];

      objc_destroyWeak(&v47);
      objc_destroyWeak(&v49);
      objc_destroyWeak(location);
      v32 = v42;
      goto LABEL_11;
    }

    v9 = v42;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v9;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;

  v40 = [v10 interaction];
  v11 = getWFDialogLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(location[0]) = 136315138;
    *(location + 4) = "[WFInteractionDialogViewController loadView]";
    _os_log_impl(&dword_274719000, v11, OS_LOG_TYPE_DEFAULT, "%s Handling interaction", location, 0xCu);
  }

  objc_initWeak(location, self);
  v12 = [v10 doneButton];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __45__WFInteractionDialogViewController_loadView__block_invoke_212;
  v44[3] = &unk_279EE8908;
  objc_copyWeak(&v45, location);
  v13 = [WFCompactDialogAction actionForButton:v12 handler:v44];

  v52 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
  [(WFCompactDialogViewController *)self configureActionGroupWithActions:v14];

  objc_destroyWeak(&v45);
  objc_destroyWeak(location);

  v32 = 0;
LABEL_11:
  v15 = [[WFInteractionCardViewController alloc] initWithInteraction:v40];
  [(WFInteractionCardViewController *)v15 setDelegate:self];
  [(WFCompactPlatterViewController *)self setContentViewController:v15];
  cardViewController = self->_cardViewController;
  self->_cardViewController = v15;
  v33 = v15;

  v41 = objc_opt_new();
  [(WFInteractionDialogViewController *)self addChildViewController:v41];
  v17 = [(WFInteractionCardProgressViewController *)v41 view];
  v18 = [MEMORY[0x277D75348] systemGray5Color];
  v19 = [v18 colorWithAlphaComponent:0.5];
  [v17 setBackgroundColor:v19];

  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = [(WFCompactPlatterViewController *)self platterView];
  v21 = [v20 footerView];

  [v21 setClipsToBounds:1];
  [v21 addSubview:v17];
  v34 = MEMORY[0x277CCAAD0];
  v39 = [v17 topAnchor];
  v38 = [v21 topAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v51[0] = v37;
  v36 = [v17 leadingAnchor];
  v35 = [v21 leadingAnchor];
  v22 = [v36 constraintEqualToAnchor:v35];
  v51[1] = v22;
  v23 = [v17 trailingAnchor];
  v24 = [v21 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v51[2] = v25;
  v26 = [v17 bottomAnchor];
  v27 = [v21 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v51[3] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
  [v34 activateConstraints:v29];

  [(WFInteractionDialogViewController *)self didMoveToParentViewController:self];
  progressViewController = self->_progressViewController;
  self->_progressViewController = v41;

  v31 = [(WFCompactPlatterViewController *)self platterView];
  [v31 setFooterViewHeight:40.0];

  if ([(WFInteractionDialogViewController *)self showCheckmarkOnAppear])
  {
    [(WFInteractionDialogViewController *)self showProgressWithEvent:0, v32];
  }
}

void __45__WFInteractionDialogViewController_loadView__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = getWFDialogLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[WFInteractionDialogViewController loadView]_block_invoke";
    _os_log_impl(&dword_274719000, v2, OS_LOG_TYPE_DEFAULT, "%s Cancelled interaction", &v4, 0xCu);
  }

  v3 = [objc_alloc(MEMORY[0x277D79E88]) initWithInteractionResponseCode:0];
  [WeakRetained finishWithResponse:v3];
}

void __45__WFInteractionDialogViewController_loadView__block_invoke_209(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = getWFDialogLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[WFInteractionDialogViewController loadView]_block_invoke";
    _os_log_impl(&dword_274719000, v2, OS_LOG_TYPE_DEFAULT, "%s Confirmed interaction", &v5, 0xCu);
  }

  v3 = [WeakRetained confirmAction];
  [v3 setEnabled:0];

  [WeakRetained showProgressWithEvent:0];
  v4 = [objc_alloc(MEMORY[0x277D79E88]) initWithInteractionResponseCode:1];
  [WeakRetained finishWithResponse:v4 waitForFollowUpRequest:1];
}

void __45__WFInteractionDialogViewController_loadView__block_invoke_212(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = getWFDialogLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[WFInteractionDialogViewController loadView]_block_invoke";
    _os_log_impl(&dword_274719000, v2, OS_LOG_TYPE_DEFAULT, "%s Finished interaction", &v4, 0xCu);
  }

  v3 = [objc_alloc(MEMORY[0x277D79FA8]) initWithInteractionResponseCode:0];
  [WeakRetained finishWithResponse:v3];
}

@end
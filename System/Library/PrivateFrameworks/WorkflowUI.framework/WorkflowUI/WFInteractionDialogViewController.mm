@interface WFInteractionDialogViewController
- (BOOL)canHandleFollowUpRequest:(id)request;
- (BOOL)showCheckmarkOnAppear;
- (double)contentHeightForWidth:(double)width withMaximumVisibleHeight:(double)height;
- (void)handleFollowUpRequest:(id)request;
- (void)interactionCardViewControllerDidLoad:(id)load;
- (void)interactionCardViewControllerDidRequestCancel:(id)cancel;
- (void)interactionCardViewControllerDidRequestPunchout:(id)punchout;
- (void)loadView;
- (void)showProgressWithEvent:(unint64_t)event;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation WFInteractionDialogViewController

- (void)interactionCardViewControllerDidRequestCancel:(id)cancel
{
  followUpRequest = [(WFInteractionDialogViewController *)self followUpRequest];
  v5 = followUpRequest;
  if (followUpRequest)
  {
    request = followUpRequest;
  }

  else
  {
    request = [(WFCompactDialogViewController *)self request];
  }

  v9 = request;

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

- (void)interactionCardViewControllerDidRequestPunchout:(id)punchout
{
  followUpRequest = [(WFInteractionDialogViewController *)self followUpRequest];
  v5 = followUpRequest;
  if (followUpRequest)
  {
    request = followUpRequest;
  }

  else
  {
    request = [(WFCompactDialogViewController *)self request];
  }

  v10 = request;

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

- (void)interactionCardViewControllerDidLoad:(id)load
{
  confirmAction = [(WFInteractionDialogViewController *)self confirmAction];
  [confirmAction setEnabled:1];

  [(WFCompactPlatterViewController *)self scrollToTopAnimated:0];
}

- (void)handleFollowUpRequest:(id)request
{
  v19[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v18.receiver = self;
  v18.super_class = WFInteractionDialogViewController;
  [(WFCompactDialogViewController *)&v18 handleFollowUpRequest:requestCopy];
  [(WFInteractionDialogViewController *)self setFollowUpRequest:requestCopy];
  promptForDisplay = [requestCopy promptForDisplay];
  platterView = [(WFCompactPlatterViewController *)self platterView];
  [platterView setPrimaryText:promptForDisplay];

  interaction = [requestCopy interaction];
  cardViewController = [(WFInteractionDialogViewController *)self cardViewController];
  [cardViewController updateWithInteraction:interaction];

  if ([interaction intentHandlingStatus] == 3)
  {
    [(WFInteractionDialogViewController *)self showProgressWithEvent:1];
  }

  objc_initWeak(&location, self);
  doneButton = [requestCopy doneButton];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __59__WFInteractionDialogViewController_handleFollowUpRequest___block_invoke;
  v15 = &unk_279EE8908;
  objc_copyWeak(&v16, &location);
  v10 = [WFCompactDialogAction actionForButton:doneButton handler:&v12];

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

- (BOOL)canHandleFollowUpRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = WFInteractionDialogViewController;
  [(WFInteractionDialogViewController *)&v4 viewDidAppear:appear];
  if ([(WFInteractionDialogViewController *)self showCheckmarkOnAppear])
  {
    [(WFInteractionDialogViewController *)self showProgressWithEvent:1];
  }
}

- (BOOL)showCheckmarkOnAppear
{
  request = [(WFCompactDialogViewController *)self request];
  if (request && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    interaction = [request interaction];
    intent = [interaction intent];
    _intentCategory = [intent _intentCategory];

    v7 = [interaction intentHandlingStatus] == 3 && _intentCategory != 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)showProgressWithEvent:(unint64_t)event
{
  [(WFCompactPlatterViewController *)self setPlatterHeightAnimationsDisabled:1];
  platterView = [(WFCompactPlatterViewController *)self platterView];
  [platterView setFooterViewHidden:0];

  progressViewController = [(WFInteractionDialogViewController *)self progressViewController];
  [progressViewController handleEvent:event];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__WFInteractionDialogViewController_showProgressWithEvent___block_invoke;
  block[3] = &unk_279EE8A78;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (double)contentHeightForWidth:(double)width withMaximumVisibleHeight:(double)height
{
  v5 = [(WFInteractionDialogViewController *)self cardViewController:width];
  [v5 contentHeightForWidth:width];
  v7 = v6;

  return v7;
}

- (void)loadView
{
  v54[2] = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = WFInteractionDialogViewController;
  [(WFCompactDialogViewController *)&v50 loadView];
  platterView = [(WFCompactPlatterViewController *)self platterView];
  [platterView setAccessibilityIdentifier:@"junior_interaction_platter_view"];

  request = [(WFCompactDialogViewController *)self request];
  if (request)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      interaction = [request interaction];
      objc_initWeak(location, self);
      cancelButton = [request cancelButton];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __45__WFInteractionDialogViewController_loadView__block_invoke;
      v48[3] = &unk_279EE8908;
      objc_copyWeak(&v49, location);
      v4 = [WFCompactDialogAction actionForButton:cancelButton handler:v48];

      confirmButton = [request confirmButton];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __45__WFInteractionDialogViewController_loadView__block_invoke_209;
      v46[3] = &unk_279EE8908;
      objc_copyWeak(&v47, location);
      v6 = [WFCompactDialogAction actionForButton:confirmButton handler:v46];

      [v6 setEnabled:0];
      [(WFInteractionDialogViewController *)self setConfirmAction:v6];
      v54[0] = v4;
      v54[1] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
      [(WFCompactDialogViewController *)self configureActionGroupWithActions:v7];

      objc_destroyWeak(&v47);
      objc_destroyWeak(&v49);
      objc_destroyWeak(location);
      v32 = request;
      goto LABEL_11;
    }

    v9 = request;
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

  interaction = [v10 interaction];
  v11 = getWFDialogLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(location[0]) = 136315138;
    *(location + 4) = "[WFInteractionDialogViewController loadView]";
    _os_log_impl(&dword_274719000, v11, OS_LOG_TYPE_DEFAULT, "%s Handling interaction", location, 0xCu);
  }

  objc_initWeak(location, self);
  doneButton = [v10 doneButton];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __45__WFInteractionDialogViewController_loadView__block_invoke_212;
  v44[3] = &unk_279EE8908;
  objc_copyWeak(&v45, location);
  v13 = [WFCompactDialogAction actionForButton:doneButton handler:v44];

  v52 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
  [(WFCompactDialogViewController *)self configureActionGroupWithActions:v14];

  objc_destroyWeak(&v45);
  objc_destroyWeak(location);

  v32 = 0;
LABEL_11:
  v15 = [[WFInteractionCardViewController alloc] initWithInteraction:interaction];
  [(WFInteractionCardViewController *)v15 setDelegate:self];
  [(WFCompactPlatterViewController *)self setContentViewController:v15];
  cardViewController = self->_cardViewController;
  self->_cardViewController = v15;
  v33 = v15;

  v41 = objc_opt_new();
  [(WFInteractionDialogViewController *)self addChildViewController:v41];
  view = [(WFInteractionCardProgressViewController *)v41 view];
  systemGray5Color = [MEMORY[0x277D75348] systemGray5Color];
  v19 = [systemGray5Color colorWithAlphaComponent:0.5];
  [view setBackgroundColor:v19];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  platterView2 = [(WFCompactPlatterViewController *)self platterView];
  footerView = [platterView2 footerView];

  [footerView setClipsToBounds:1];
  [footerView addSubview:view];
  v34 = MEMORY[0x277CCAAD0];
  topAnchor = [view topAnchor];
  topAnchor2 = [footerView topAnchor];
  v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v51[0] = v37;
  leadingAnchor = [view leadingAnchor];
  leadingAnchor2 = [footerView leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v51[1] = v22;
  trailingAnchor = [view trailingAnchor];
  trailingAnchor2 = [footerView trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v51[2] = v25;
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [footerView bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v51[3] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
  [v34 activateConstraints:v29];

  [(WFInteractionDialogViewController *)self didMoveToParentViewController:self];
  progressViewController = self->_progressViewController;
  self->_progressViewController = v41;

  platterView3 = [(WFCompactPlatterViewController *)self platterView];
  [platterView3 setFooterViewHeight:40.0];

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
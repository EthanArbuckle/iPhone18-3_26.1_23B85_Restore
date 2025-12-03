@interface WFInteractionCardViewController
+ (void)initialize;
- (UIActivityIndicatorView)activityIndicatorView;
- (WFInteractionCardViewController)initWithInteraction:(id)interaction;
- (WFInteractionCardViewControllerDelegate)delegate;
- (double)contentHeightForWidth:(double)width;
- (id)cardRequestForInteraction:(id)interaction;
- (id)cardViewController;
- (void)buttonOverlayWasTouchedUpInside:(id)inside;
- (void)cardViewControllerDidLoad:(id)load;
- (void)loadView;
- (void)updateCardViewSize;
- (void)updateWithInteraction:(id)interaction;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation WFInteractionCardViewController

- (UIActivityIndicatorView)activityIndicatorView
{
  WeakRetained = objc_loadWeakRetained(&self->_activityIndicatorView);

  return WeakRetained;
}

- (WFInteractionCardViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)buttonOverlayWasTouchedUpInside:(id)inside
{
  insideCopy = inside;
  delegate = [(WFInteractionCardViewController *)self delegate];
  [delegate interactionCardViewControllerDidRequestPunchout:self];

  v6 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__WFInteractionCardViewController_buttonOverlayWasTouchedUpInside___block_invoke;
  block[3] = &unk_279EE8A78;
  v9 = insideCopy;
  v7 = insideCopy;
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
}

- (void)cardViewControllerDidLoad:(id)load
{
  delegate = [(WFInteractionCardViewController *)self delegate];
  [delegate interactionCardViewControllerDidLoad:self];

  [(WFInteractionCardViewController *)self updateCardViewSize];
}

- (void)updateCardViewSize
{
  delegate = [(WFInteractionCardViewController *)self delegate];
  [delegate interactionCardViewControllerDidInvalidateSize:self];
}

- (double)contentHeightForWidth:(double)width
{
  cardViewController = [(WFInteractionCardViewController *)self cardViewController];

  if (!cardViewController)
  {
    return 98.0;
  }

  cardViewController2 = [(WFInteractionCardViewController *)self cardViewController];
  [cardViewController2 contentHeightForWidth:width];
  v8 = v7;

  return v8;
}

- (void)updateWithInteraction:(id)interaction
{
  v17 = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  if (!interactionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFInteractionCardViewController.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"interaction"}];
  }

  objc_storeStrong(&self->_interaction, interaction);
  v7 = [(WFInteractionCardViewController *)self cardRequestForInteraction:interactionCopy];
  v8 = getWFDialogLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "[WFInteractionCardViewController updateWithInteraction:]";
    v13 = 2112;
    v14 = v7;
    v15 = 2114;
    v16 = interactionCopy;
    _os_log_impl(&dword_274719000, v8, OS_LOG_TYPE_DEFAULT, "%s Updating existing card; sending CardKit request: %@, for interaction: %{public}@", buf, 0x20u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__WFInteractionCardViewController_updateWithInteraction___block_invoke;
  v10[3] = &unk_279EE7858;
  v10[4] = self;
  [v7 startWithReply:v10];
}

void __57__WFInteractionCardViewController_updateWithInteraction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = getWFDialogLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "[WFInteractionCardViewController updateWithInteraction:]_block_invoke";
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_274719000, v7, OS_LOG_TYPE_DEFAULT, "%s Received CardKit response: %@, error: %@", buf, 0x20u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__WFInteractionCardViewController_updateWithInteraction___block_invoke_192;
  v9[3] = &unk_279EE8C58;
  v9[4] = *(a1 + 32);
  v10 = v5;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __57__WFInteractionCardViewController_updateWithInteraction___block_invoke_192(uint64_t a1)
{
  v3 = [*(a1 + 32) cardViewController];
  v2 = [*(a1 + 40) card];
  [v3 setCard:v2];
}

- (id)cardViewController
{
  cardPresentation = [(WFInteractionCardViewController *)self cardPresentation];
  cardViewController = [cardPresentation cardViewController];

  return cardViewController;
}

- (id)cardRequestForInteraction:(id)interaction
{
  v3 = getAPUIActionCardViewConfigClass;
  interactionCopy = interaction;
  v5 = objc_alloc_init(v3());
  [v5 setStyle:0];
  [v5 setShowThumbnailImage:1];
  [v5 setShowActionButton:0];
  [v5 setShowAppFootnote:0];
  v6 = [objc_alloc(getAPUIActionCardRequestClass()) initWithCardViewConfig:v5];
  [v6 setFormat:1];
  [v6 setContent:interactionCopy];

  [v6 setLoadsBundleServices:0];

  return v6;
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = WFInteractionCardViewController;
  [(WFInteractionCardViewController *)&v6 viewDidAppear:appear];
  unlockService = [(WFInteractionCardViewController *)self unlockService];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__WFInteractionCardViewController_viewDidAppear___block_invoke;
  v5[3] = &unk_279EE8868;
  v5[4] = self;
  [unlockService requestUnlockIfNeeded:v5];
}

void __49__WFInteractionCardViewController_viewDidAppear___block_invoke(uint64_t a1, char a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [*(a1 + 32) interaction];
    v5 = [v3 cardRequestForInteraction:v4];

    v6 = getWFDialogLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) interaction];
      *buf = 136315650;
      v15 = "[WFInteractionCardViewController viewDidAppear:]_block_invoke";
      v16 = 2112;
      v17 = v5;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_274719000, v6, OS_LOG_TYPE_DEFAULT, "%s Created card request: %@, for interaction: %{public}@", buf, 0x20u);
    }

    v8 = objc_alloc_init(getCRKCardPresentationClass());
    [v8 setDelegate:*(a1 + 32)];
    objc_storeStrong((*(a1 + 32) + 1008), v8);
    v9 = [objc_alloc(getCRKCardPresentationConfigurationClass()) initWithCardRequest:v5];
    [v9 setRespectsUserConsent:0];
    [v9 setLoadsBundleProviders:0];
    v10 = getWFDialogLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[WFInteractionCardViewController viewDidAppear:]_block_invoke";
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_274719000, v10, OS_LOG_TYPE_DEFAULT, "%s Setting CRKCardPresentation configuration to: %@", buf, 0x16u);
    }

    objc_initWeak(buf, *(a1 + 32));
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__WFInteractionCardViewController_viewDidAppear___block_invoke_178;
    v12[3] = &unk_279EE8760;
    objc_copyWeak(&v13, buf);
    [v8 setConfiguration:v9 animated:0 completion:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = [*(a1 + 32) delegate];
    [v11 interactionCardViewControllerDidRequestCancel:*(a1 + 32)];
  }
}

void __49__WFInteractionCardViewController_viewDidAppear___block_invoke_178(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (v4 || ([WeakRetained cardViewController], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v7 = getWFDialogLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v12 = "[WFInteractionCardViewController viewDidAppear:]_block_invoke";
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_274719000, v7, OS_LOG_TYPE_FAULT, "%s Failed to create a CardKit card: %@", buf, 0x16u);
    }
  }

  else
  {
    v9 = getWFDialogLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[WFInteractionCardViewController viewDidAppear:]_block_invoke";
      _os_log_impl(&dword_274719000, v9, OS_LOG_TYPE_DEFAULT, "%s Finished configuring CRKCardPresentation, installing card view", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__WFInteractionCardViewController_viewDidAppear___block_invoke_179;
    block[3] = &unk_279EE8A78;
    block[4] = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __49__WFInteractionCardViewController_viewDidAppear___block_invoke_179(uint64_t a1)
{
  v2 = [*(a1 + 32) cardViewController];
  [*(a1 + 32) addChildViewController:v2];
  v3 = [v2 view];
  [v3 setAlpha:0.0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [*(a1 + 32) view];
  [v4 addSubview:v3];

  v5 = [*(a1 + 32) view];
  v6 = [v3 wf_addConstraintsToFillSuperview:v5];

  [v2 didMoveToParentViewController:*(a1 + 32)];
  v7 = [*(a1 + 32) activityIndicatorView];
  [v7 removeFromSuperview];

  [*(a1 + 32) updateCardViewSize];
  v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.100000001];
  v9 = objc_alloc_init(getCRKOverlayButtonClass());
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setBackgroundColor:v8 forState:1];
  [v9 setBackgroundColor:v8 forState:4];
  [v9 setBackgroundColor:v8 forState:5];
  [v9 addTarget:*(a1 + 32) action:sel_buttonOverlayWasTouchedUpInside_ forControlEvents:64];
  [v9 addTarget:*(a1 + 32) action:sel_buttonOverlayWasTouchedUpOutside_ forControlEvents:128];
  [v9 addTarget:*(a1 + 32) action:sel_buttonOverlayWasTouchedDown_ forControlEvents:1];
  [v9 addTarget:*(a1 + 32) action:sel_buttonOverlayTouchWasCancelled_ forControlEvents:256];
  v10 = [*(a1 + 32) view];
  [v10 addSubview:v9];

  v11 = [*(a1 + 32) view];
  v12 = [v9 wf_addConstraintsToFillSuperview:v11];

  v13 = MEMORY[0x277D75D18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__WFInteractionCardViewController_viewDidAppear___block_invoke_2;
  v15[3] = &unk_279EE8A78;
  v16 = v3;
  v14 = v3;
  [v13 animateWithDuration:v15 animations:0.300000012];
}

- (void)loadView
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = WFInteractionCardViewController;
  [(WFInteractionCardViewController *)&v16 loadView];
  view = [(WFInteractionCardViewController *)self view];
  [view setClipsToBounds:1];

  v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(WFInteractionCardViewController *)self view];
  [view2 addSubview:v4];

  [v4 startAnimating];
  [(WFInteractionCardViewController *)self setActivityIndicatorView:v4];
  v15 = MEMORY[0x277CCAAD0];
  centerXAnchor = [v4 centerXAnchor];
  view3 = [(WFInteractionCardViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v17[0] = v9;
  centerYAnchor = [v4 centerYAnchor];
  view4 = [(WFInteractionCardViewController *)self view];
  centerYAnchor2 = [view4 centerYAnchor];
  v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v17[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [v15 activateConstraints:v14];
}

- (WFInteractionCardViewController)initWithInteraction:(id)interaction
{
  interactionCopy = interaction;
  if (!interactionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFInteractionCardViewController.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"interaction"}];
  }

  v14.receiver = self;
  v14.super_class = WFInteractionCardViewController;
  v7 = [(WFInteractionCardViewController *)&v14 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_interaction, interaction);
    v9 = objc_opt_new();
    unlockService = v8->_unlockService;
    v8->_unlockService = v9;

    softLinkAPUIRegisterCardServicesIfNeeded();
    softLinkAPUIRegisterCardKitProvidersIfNeeded();
    v11 = v8;
  }

  return v8;
}

+ (void)initialize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__WFInteractionCardViewController_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, block);
  }
}

void __45__WFInteractionCardViewController_initialize__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = getCRKCardViewControllerDelegateProtocol();
  class_addProtocol(v1, v2);
}

@end
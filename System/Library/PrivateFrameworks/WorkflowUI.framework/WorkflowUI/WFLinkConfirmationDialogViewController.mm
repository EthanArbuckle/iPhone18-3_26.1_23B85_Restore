@interface WFLinkConfirmationDialogViewController
- (id)snippetInteractedResponseWithURL:(id)l;
- (void)finishWithResponseCode:(unint64_t)code;
- (void)viewDidLoad;
@end

@implementation WFLinkConfirmationDialogViewController

- (id)snippetInteractedResponseWithURL:(id)l
{
  if (l)
  {
    v4 = [objc_alloc(MEMORY[0x277D7A028]) initWithConfirmationResponseCode:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)finishWithResponseCode:(unint64_t)code
{
  v5 = objc_alloc(MEMORY[0x277D7A028]);
  currentSnippetResult = [(WFLinkConfirmationDialogViewController *)self currentSnippetResult];
  output = [currentSnippetResult output];
  value = [output value];
  v9 = [v5 initWithConfirmationResponseCode:code value:value];

  [(WFCompactDialogViewController *)self finishWithResponse:v9];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = WFLinkConfirmationDialogViewController;
  [(WFLinkDialogViewController *)&v19 viewDidLoad];
  platterView = [(WFCompactPlatterViewController *)self platterView];
  [platterView setAccessibilityIdentifier:@"junior_link_confirmation_platter_view"];

  request = [(WFCompactDialogViewController *)self request];
  title = [request title];
  platterView2 = [(WFCompactPlatterViewController *)self platterView];
  [platterView2 setPrimaryText:title];

  objc_initWeak(&location, self);
  v7 = objc_opt_new();
  request2 = [(WFCompactDialogViewController *)self request];
  yesButton = [request2 yesButton];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__WFLinkConfirmationDialogViewController_viewDidLoad__block_invoke;
  v16[3] = &unk_279EE8908;
  objc_copyWeak(&v17, &location);
  v10 = [WFCompactDialogAction actionForButton:yesButton handler:v16];
  [v7 addObject:v10];

  request3 = [(WFCompactDialogViewController *)self request];
  noButton = [request3 noButton];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__WFLinkConfirmationDialogViewController_viewDidLoad__block_invoke_2;
  v14[3] = &unk_279EE8908;
  objc_copyWeak(&v15, &location);
  v13 = [WFCompactDialogAction actionForButton:noButton handler:v14];
  [v7 addObject:v13];

  [(WFCompactDialogViewController *)self configureActionGroupWithActions:v7];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);
}

void __53__WFLinkConfirmationDialogViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishWithResponseCode:1];
}

void __53__WFLinkConfirmationDialogViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishWithResponseCode:2];
}

@end
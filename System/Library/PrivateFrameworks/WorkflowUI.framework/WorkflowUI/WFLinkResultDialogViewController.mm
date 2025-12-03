@interface WFLinkResultDialogViewController
- (id)snippetInteractedResponseWithURL:(id)l;
- (void)viewDidLoad;
@end

@implementation WFLinkResultDialogViewController

- (id)snippetInteractedResponseWithURL:(id)l
{
  v3 = MEMORY[0x277D7A038];
  lCopy = l;
  v5 = [[v3 alloc] initWithRequestedOpenURL:lCopy];

  return v5;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = WFLinkResultDialogViewController;
  [(WFLinkDialogViewController *)&v13 viewDidLoad];
  platterView = [(WFCompactPlatterViewController *)self platterView];
  [platterView setAccessibilityIdentifier:@"junior_link_result_platter_view"];

  v4 = objc_opt_new();
  objc_initWeak(&location, self);
  request = [(WFCompactDialogViewController *)self request];
  doneButton = [request doneButton];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__WFLinkResultDialogViewController_viewDidLoad__block_invoke;
  v10[3] = &unk_279EE8908;
  objc_copyWeak(&v11, &location);
  v7 = [WFCompactDialogAction actionForButton:doneButton handler:v10];
  [v4 addObject:v7];

  [(WFCompactDialogViewController *)self configureActionGroupWithActions:v4];
  request2 = [(WFCompactDialogViewController *)self request];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__WFLinkResultDialogViewController_viewDidLoad__block_invoke_2;
  v9[3] = &unk_279EE7F90;
  v9[4] = self;
  [request2 getCATResultWithCompletionHandler:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __47__WFLinkResultDialogViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [objc_alloc(MEMORY[0x277D7A038]) initWithCancelled:0];
  [WeakRetained finishWithResponse:v1];
}

void __47__WFLinkResultDialogViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = [a2 captionPrint];
  v3 = [v5 firstObject];
  v4 = [*(a1 + 32) platterView];
  [v4 setSecondaryText:v3];
}

@end
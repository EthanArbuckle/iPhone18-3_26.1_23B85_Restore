@interface WFLinkConfirmationDialogViewController
- (id)snippetInteractedResponseWithURL:(id)a3;
- (void)finishWithResponseCode:(unint64_t)a3;
- (void)viewDidLoad;
@end

@implementation WFLinkConfirmationDialogViewController

- (id)snippetInteractedResponseWithURL:(id)a3
{
  if (a3)
  {
    v4 = [objc_alloc(MEMORY[0x277D7A028]) initWithConfirmationResponseCode:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)finishWithResponseCode:(unint64_t)a3
{
  v5 = objc_alloc(MEMORY[0x277D7A028]);
  v6 = [(WFLinkConfirmationDialogViewController *)self currentSnippetResult];
  v7 = [v6 output];
  v8 = [v7 value];
  v9 = [v5 initWithConfirmationResponseCode:a3 value:v8];

  [(WFCompactDialogViewController *)self finishWithResponse:v9];
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = WFLinkConfirmationDialogViewController;
  [(WFLinkDialogViewController *)&v19 viewDidLoad];
  v3 = [(WFCompactPlatterViewController *)self platterView];
  [v3 setAccessibilityIdentifier:@"junior_link_confirmation_platter_view"];

  v4 = [(WFCompactDialogViewController *)self request];
  v5 = [v4 title];
  v6 = [(WFCompactPlatterViewController *)self platterView];
  [v6 setPrimaryText:v5];

  objc_initWeak(&location, self);
  v7 = objc_opt_new();
  v8 = [(WFCompactDialogViewController *)self request];
  v9 = [v8 yesButton];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__WFLinkConfirmationDialogViewController_viewDidLoad__block_invoke;
  v16[3] = &unk_279EE8908;
  objc_copyWeak(&v17, &location);
  v10 = [WFCompactDialogAction actionForButton:v9 handler:v16];
  [v7 addObject:v10];

  v11 = [(WFCompactDialogViewController *)self request];
  v12 = [v11 noButton];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__WFLinkConfirmationDialogViewController_viewDidLoad__block_invoke_2;
  v14[3] = &unk_279EE8908;
  objc_copyWeak(&v15, &location);
  v13 = [WFCompactDialogAction actionForButton:v12 handler:v14];
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
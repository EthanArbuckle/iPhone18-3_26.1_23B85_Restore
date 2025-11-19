@interface WFLinkChoiceDialogViewController
- (void)getCATResultWithCompletionHandler:(id)a3;
- (void)viewDidLoad;
@end

@implementation WFLinkChoiceDialogViewController

- (void)getCATResultWithCompletionHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFLinkChoiceDialogViewController.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v6 = [(WFLinkChoiceDialogViewController *)self catResult];

  if (v6)
  {
    v7 = [(WFLinkChoiceDialogViewController *)self catResult];
    v5[2](v5, v7);
  }

  else
  {
    v8 = [(WFCompactDialogViewController *)self request];
    v9 = [v8 request];
    v10 = [v9 dialog];

    if (v10)
    {
      v11 = [(WFCompactDialogViewController *)self request];
      v12 = [v11 request];
      v13 = [v12 dialog];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __70__WFLinkChoiceDialogViewController_getCATResultWithCompletionHandler___block_invoke;
      v15[3] = &unk_279EE7940;
      v15[4] = self;
      v16 = v5;
      [v13 getResultWithCompletionHandler:v15];
    }

    else
    {
      v5[2](v5, 0);
    }
  }
}

void __70__WFLinkChoiceDialogViewController_getCATResultWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[WFLinkChoiceDialogViewController getCATResultWithCompletionHandler:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_274719000, v7, OS_LOG_TYPE_ERROR, "%s Could not get CATResult, error: %@", &v9, 0x16u);
    }

    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    [*(a1 + 32) setCatResult:v5];
    v8 = *(*(a1 + 40) + 16);
  }

  v8();
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = WFLinkChoiceDialogViewController;
  [(WFLinkDialogViewController *)&v13 viewDidLoad];
  v3 = [(WFCompactPlatterViewController *)self platterView];
  [v3 setAccessibilityIdentifier:@"junior_link_result_platter_view"];

  v4 = objc_opt_new();
  objc_initWeak(&location, self);
  v5 = [(WFCompactDialogViewController *)self request];
  v6 = [v5 buttons];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__WFLinkChoiceDialogViewController_viewDidLoad__block_invoke;
  v9[3] = &unk_279EE7918;
  v7 = v4;
  v10 = v7;
  objc_copyWeak(&v11, &location);
  [v6 enumerateObjectsUsingBlock:v9];

  [(WFCompactDialogViewController *)self configureActionGroupWithActions:v7];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__WFLinkChoiceDialogViewController_viewDidLoad__block_invoke_3;
  v8[3] = &unk_279EE7F90;
  v8[4] = self;
  [(WFLinkChoiceDialogViewController *)self getCATResultWithCompletionHandler:v8];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

void __47__WFLinkChoiceDialogViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __47__WFLinkChoiceDialogViewController_viewDidLoad__block_invoke_2;
  v11 = &unk_279EE78F0;
  objc_copyWeak(v12, (a1 + 40));
  v12[1] = a3;
  v7 = [WFCompactDialogAction actionForButton:v5 handler:&v8];
  [v6 addObject:{v7, v8, v9, v10, v11}];

  objc_destroyWeak(v12);
}

void __47__WFLinkChoiceDialogViewController_viewDidLoad__block_invoke_3(uint64_t a1, void *a2)
{
  v5 = [a2 captionPrint];
  v3 = [v5 firstObject];
  v4 = [*(a1 + 32) platterView];
  [v4 setSecondaryText:v3];
}

void __47__WFLinkChoiceDialogViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [objc_alloc(MEMORY[0x277D7A018]) initWithResponseCode:0 selectedButtonIndex:*(a1 + 40)];
  [WeakRetained finishWithResponse:v2];
}

@end
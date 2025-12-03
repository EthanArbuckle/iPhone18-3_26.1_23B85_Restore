@interface WFFileAccessDialogViewController
- (void)loadView;
@end

@implementation WFFileAccessDialogViewController

- (void)loadView
{
  v22.receiver = self;
  v22.super_class = WFFileAccessDialogViewController;
  [(WFCompactDialogViewController *)&v22 loadView];
  request = [(WFCompactDialogViewController *)self request];
  message = [request message];
  platterView = [(WFCompactPlatterViewController *)self platterView];
  [platterView setSecondaryText:message];

  objc_initWeak(&location, self);
  v6 = objc_opt_new();
  cancelButton = [request cancelButton];

  if (cancelButton)
  {
    cancelButton2 = [request cancelButton];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __44__WFFileAccessDialogViewController_loadView__block_invoke;
    v19[3] = &unk_279EE8908;
    objc_copyWeak(&v20, &location);
    v9 = [WFCompactDialogAction actionForButton:cancelButton2 handler:v19];
    [v6 addObject:v9];

    objc_destroyWeak(&v20);
  }

  okButton = [request okButton];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __44__WFFileAccessDialogViewController_loadView__block_invoke_2;
  v16 = &unk_279EE8630;
  objc_copyWeak(&v18, &location);
  v11 = request;
  v17 = v11;
  v12 = [WFCompactDialogAction actionForButton:okButton handler:&v13];
  [v6 addObject:{v12, v13, v14, v15, v16}];

  [(WFCompactDialogViewController *)self configureActionGroupWithActions:v6];
  objc_destroyWeak(&v18);

  objc_destroyWeak(&location);
}

void __44__WFFileAccessDialogViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [objc_alloc(MEMORY[0x277D7C400]) initWithFileResponseCode:0 error:0];
  [WeakRetained finishWithResponse:v1];
}

void __44__WFFileAccessDialogViewController_loadView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_alloc_init(MEMORY[0x277D7C408]);
  v4 = [*(a1 + 32) URLs];
  v5 = [*(a1 + 32) workflowID];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__WFFileAccessDialogViewController_loadView__block_invoke_3;
  v6[3] = &unk_279EE8710;
  v6[4] = WeakRetained;
  [v3 extendDocumentURLs:v4 workflowID:v5 completion:v6];
}

void __44__WFFileAccessDialogViewController_loadView__block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v10 = a3;
  v5 = *(a1 + 32);
  v6 = objc_alloc(MEMORY[0x277D7C400]);
  if (a2)
  {
    v7 = 1;
    v8 = 0;
  }

  else
  {
    v7 = 2;
    v8 = v10;
  }

  v9 = [v6 initWithFileResponseCode:v7 error:v8];
  [v5 finishWithResponse:v9];
}

@end
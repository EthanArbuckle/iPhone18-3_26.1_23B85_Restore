@interface WFShowAlertDialogViewController
- (void)loadView;
@end

@implementation WFShowAlertDialogViewController

- (void)loadView
{
  v17.receiver = self;
  v17.super_class = WFShowAlertDialogViewController;
  [(WFCompactDialogViewController *)&v17 loadView];
  v3 = [(WFCompactDialogViewController *)self request];
  v4 = [v3 message];
  v5 = [(WFCompactPlatterViewController *)self platterView];
  [v5 setSecondaryText:v4];

  objc_initWeak(&location, self);
  v6 = objc_opt_new();
  v7 = [v3 cancelButton];

  if (v7)
  {
    v8 = [v3 cancelButton];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __43__WFShowAlertDialogViewController_loadView__block_invoke;
    v14[3] = &unk_279EE8908;
    objc_copyWeak(&v15, &location);
    v9 = [WFCompactDialogAction actionForButton:v8 handler:v14];
    [v6 addObject:v9];

    objc_destroyWeak(&v15);
  }

  v10 = [v3 okButton];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__WFShowAlertDialogViewController_loadView__block_invoke_2;
  v12[3] = &unk_279EE8908;
  objc_copyWeak(&v13, &location);
  v11 = [WFCompactDialogAction actionForButton:v10 handler:v12];
  [v6 addObject:v11];

  [(WFCompactDialogViewController *)self configureActionGroupWithActions:v6];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
}

void __43__WFShowAlertDialogViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [objc_alloc(MEMORY[0x277D79F38]) initWithCancelled:1];
  [WeakRetained finishWithResponse:v1];
}

void __43__WFShowAlertDialogViewController_loadView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [objc_alloc(MEMORY[0x277D79F38]) initWithCancelled:0];
  [WeakRetained finishWithResponse:v1];
}

@end
@interface PSUIPlanPendingTransferActivationButtonSpecifier
- (PSListController)hostController;
- (PSUIPlanPendingTransferActivationButtonSpecifier)initWithListController:(id)a3 planPendingTransfer:(id)a4;
- (UIViewController)topViewController;
- (void)activatePlanPendingTransfer:(id)a3;
- (void)setProperty:(id)a3 forKey:(id)a4;
- (void)setSpecifierProperties;
- (void)showSpinner:(BOOL)a3;
- (void)simSetupFlowCompleted:(unint64_t)a3;
@end

@implementation PSUIPlanPendingTransferActivationButtonSpecifier

- (PSUIPlanPendingTransferActivationButtonSpecifier)initWithListController:(id)a3 planPendingTransfer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PSUIPlanPendingTransferActivationButtonSpecifier;
  v8 = [(PSUIPlanPendingTransferActivationButtonSpecifier *)&v14 initWithName:0 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_hostController, v6);
    v10 = [v6 navigationController];
    objc_storeWeak(&v9->_navigationController, v10);

    objc_storeStrong(&v9->_plan, a4);
    objc_storeWeak(&v9->_hostController, v6);
    v11 = [MEMORY[0x277CF96D8] sharedManager];
    cellularPlanManager = v9->_cellularPlanManager;
    v9->_cellularPlanManager = v11;

    [(PSUIPlanPendingTransferActivationButtonSpecifier *)v9 setSpecifierProperties];
    [(PSUIPlanPendingTransferActivationButtonSpecifier *)v9 setButtonAction:sel_activatePlanPendingTransfer_];
  }

  return v9;
}

- (void)setSpecifierProperties
{
  v3 = [(CTCellularPlanPendingTransfer *)self->_plan status];
  if (v3 <= 2)
  {
    v4 = off_279BAAA88[v3];
    v5 = qword_279BAAAA0[v3];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:v4 value:&stru_287733598 table:@"Gemini-Gemini"];
    [(PSUIPlanPendingTransferActivationButtonSpecifier *)self setName:v7];

    v8 = *MEMORY[0x277D3FF38];

    [(PSUIPlanPendingTransferActivationButtonSpecifier *)self setProperty:v5 forKey:v8];
  }
}

- (void)activatePlanPendingTransfer:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUIPlanPendingTransferActivationButtonSpecifier *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[PSUIPlanPendingTransferActivationButtonSpecifier activatePlanPendingTransfer:]";
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [v4 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  v6 = MEMORY[0x277D75110];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"TRANSFER_TARGET_TITLE" value:&stru_287733598 table:@"Cellular"];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"TRANSFER_REQUEST_CONFIRMATION" value:&stru_287733598 table:@"Cellular"];
  v11 = [v6 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"OK_BUTTON" value:&stru_287733598 table:@"Cellular"];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __80__PSUIPlanPendingTransferActivationButtonSpecifier_activatePlanPendingTransfer___block_invoke;
  v22 = &unk_279BAA160;
  v23 = self;
  v24 = v4;
  v15 = v4;
  v16 = [v12 actionWithTitle:v14 style:2 handler:&v19];

  [v11 addAction:{v16, v19, v20, v21, v22, v23}];
  v17 = [(PSUIPlanPendingTransferActivationButtonSpecifier *)self hostController];
  [v17 presentViewController:v11 animated:1 completion:0];

  v18 = *MEMORY[0x277D85DE8];
}

void __80__PSUIPlanPendingTransferActivationButtonSpecifier_activatePlanPendingTransfer___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) plan];
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_2658DE000, v2, OS_LOG_TYPE_DEFAULT, "Triggered activation of pending transfer item: %@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 264);
  v7 = *(v5 + 248);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__PSUIPlanPendingTransferActivationButtonSpecifier_activatePlanPendingTransfer___block_invoke_27;
  v9[3] = &unk_279BAAA68;
  v9[4] = v5;
  v10 = v4;
  [v6 activatePlanPendingTransfer:v7 completion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __80__PSUIPlanPendingTransferActivationButtonSpecifier_activatePlanPendingTransfer___block_invoke_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v6;
    _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "activate pending plan callback with error: %@", buf, 0xCu);
  }

  if ([v6 code] == 49 || objc_msgSend(v6, "code") == 51)
  {
    v8 = *(a1 + 32);
    if (v8[34])
    {
      v9 = [v8 getLogger];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "duplicate request to launch SimSetupSupport", buf, 2u);
      }
    }

    else
    {
      v20 = *MEMORY[0x277D49548];
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:3];
      v21 = v10;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

      v11 = [MEMORY[0x277D49530] flowWithOptions:v9];
      v12 = *(a1 + 32);
      v13 = *(v12 + 272);
      *(v12 + 272) = v11;

      [*(*(a1 + 32) + 272) setDelegate:?];
      v15 = *(a1 + 32);
      v14 = *(a1 + 40);
      v16 = *(v15 + 272);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __80__PSUIPlanPendingTransferActivationButtonSpecifier_activatePlanPendingTransfer___block_invoke_31;
      v18[3] = &unk_279BAAA40;
      v18[4] = v15;
      v19 = v14;
      [v16 firstViewController:v18];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __80__PSUIPlanPendingTransferActivationButtonSpecifier_activatePlanPendingTransfer___block_invoke_31(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = objc_opt_class();
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "present %@", &v11, 0xCu);
  }

  [*(a1 + 40) setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  v5 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v3];
  [v5 setModalPresentationStyle:2];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
  v7 = [WeakRetained topViewController];
  objc_storeWeak((*(a1 + 32) + 280), v7);

  v8 = objc_loadWeakRetained((*(a1 + 32) + 240));
  v9 = [v8 topViewController];
  [v9 presentViewController:v5 animated:1 completion:0];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)showSpinner:(BOOL)a3
{
  v3 = a3;
  if (!self->_spinner)
  {
    v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = self->_spinner;
    self->_spinner = v6;

    v8 = [(PSUIPlanPendingTransferActivationButtonSpecifier *)self propertyForKey:*MEMORY[0x277D40148]];
    v9 = [v8 accessoryView];
    originAccessoryView = self->_originAccessoryView;
    self->_originAccessoryView = v9;

    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    [(UIActivityIndicatorView *)self->_spinner stopAnimating];
    v11 = [(PSUIPlanPendingTransferActivationButtonSpecifier *)self propertyForKey:*MEMORY[0x277D40148]];
    [v11 setAccessoryView:self->_originAccessoryView];

    goto LABEL_6;
  }

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [(PSUIPlanPendingTransferActivationButtonSpecifier *)self propertyForKey:*MEMORY[0x277D40148]];
  [v5 setAccessoryView:self->_spinner];

  [(UIActivityIndicatorView *)self->_spinner startAnimating];
LABEL_6:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__PSUIPlanPendingTransferActivationButtonSpecifier_showSpinner___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__PSUIPlanPendingTransferActivationButtonSpecifier_showSpinner___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 256));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

- (void)setProperty:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([*MEMORY[0x277D40148] isEqualToString:v7])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
      v9 = [v8 textLabel];
      [v9 setNumberOfLines:0];

      v10 = [v8 textLabel];

      [v10 setLineBreakMode:0];
    }
  }

  if ([*MEMORY[0x277D3FF38] isEqualToString:v7])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSUIPlanPendingTransferActivationButtonSpecifier showSpinner:](self, "showSpinner:", [v6 BOOLValue] ^ 1);
    }
  }

  v11.receiver = self;
  v11.super_class = PSUIPlanPendingTransferActivationButtonSpecifier;
  [(PSUIPlanPendingTransferActivationButtonSpecifier *)&v11 setProperty:v6 forKey:v7];
}

- (void)simSetupFlowCompleted:(unint64_t)a3
{
  v4 = [(PSUIPlanPendingTransferActivationButtonSpecifier *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "finish activation flow", buf, 2u);
  }

  objc_initWeak(buf, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__PSUIPlanPendingTransferActivationButtonSpecifier_simSetupFlowCompleted___block_invoke;
  v5[3] = &unk_279BAA050;
  objc_copyWeak(&v6, buf);
  v5[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __74__PSUIPlanPendingTransferActivationButtonSpecifier_simSetupFlowCompleted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = objc_loadWeakRetained((*(a1 + 32) + 240));
    v4 = [v3 topViewController];
    v5 = [v4 presentedViewController];
    [v5 dismissViewControllerAnimated:1 completion:0];

    v6 = *(a1 + 32);
    v7 = *(v6 + 272);
    *(v6 + 272) = 0;

    WeakRetained = v8;
  }
}

- (PSListController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

- (UIViewController)topViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_topViewController);

  return WeakRetained;
}

@end
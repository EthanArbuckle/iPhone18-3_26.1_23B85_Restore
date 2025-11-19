@interface PSUICrossPlatformSIMTransferSpecifier
+ (id)specifierWithHostController:(id)a3;
- (PSListController)hostController;
- (PSUICrossPlatformSIMTransferSpecifier)initWithHostController:(id)a3;
- (UIViewController)firstViewController;
- (void)cellPressed:(id)a3;
- (void)setProperty:(id)a3 forKey:(id)a4;
- (void)showSpinner:(BOOL)a3;
- (void)simSetupFlowCompleted:(unint64_t)a3;
@end

@implementation PSUICrossPlatformSIMTransferSpecifier

+ (id)specifierWithHostController:(id)a3
{
  v3 = a3;
  v4 = +[SSFlowHostCache sharedInstance];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 objectForKey:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [[PSUICrossPlatformSIMTransferSpecifier alloc] initWithHostController:v3];
  }

  v9 = v8;

  return v9;
}

- (PSUICrossPlatformSIMTransferSpecifier)initWithHostController:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"CROSS_PLATFORM_SIM_TRANSFER_TITLE" value:&stru_287733598 table:@"Cellular"];

  v10.receiver = self;
  v10.super_class = PSUICrossPlatformSIMTransferSpecifier;
  v7 = [(PSUICrossPlatformSIMTransferSpecifier *)&v10 initWithName:v6 target:0 set:0 get:0 detail:0 cell:13 edit:0];
  v8 = v7;
  if (v7)
  {
    [(PSUICrossPlatformSIMTransferSpecifier *)v7 setIdentifier:@"Transfer SIM via QRCode"];
    [(PSUICrossPlatformSIMTransferSpecifier *)v8 setTarget:v8];
    [(PSUICrossPlatformSIMTransferSpecifier *)v8 setButtonAction:sel_cellPressed_];
    objc_storeWeak(&v8->_hostController, v4);
    v8->_isRequestingFirstViewController = 0;
  }

  return v8;
}

- (void)cellPressed:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUICrossPlatformSIMTransferSpecifier *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[PSUICrossPlatformSIMTransferSpecifier cellPressed:]";
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (self->_flow && (self->_isRequestingFirstViewController || (WeakRetained = objc_loadWeakRetained(&self->_hostController), [WeakRetained presentedViewController], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 == 0, v7, WeakRetained, !v8)))
  {
    v9 = [(PSUICrossPlatformSIMTransferSpecifier *)self getLogger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "duplicate request to launch SimSetupSupport", buf, 2u);
    }
  }

  else
  {
    [v4 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    v10 = *MEMORY[0x277D49558];
    v17[0] = *MEMORY[0x277D49548];
    v17[1] = v10;
    v18[0] = &unk_287748FD8;
    v18[1] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v11 = [MEMORY[0x277D49530] flowWithOptions:v9];
    flow = self->_flow;
    self->_flow = v11;

    [(TSSIMSetupFlow *)self->_flow setDelegate:self];
    self->_isRequestingFirstViewController = 1;
    objc_initWeak(buf, self);
    v13 = self->_flow;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__PSUICrossPlatformSIMTransferSpecifier_cellPressed___block_invoke;
    v15[3] = &unk_279BA9EC8;
    objc_copyWeak(&v16, buf);
    v15[4] = self;
    [(TSSIMSetupFlow *)v13 firstViewController:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __53__PSUICrossPlatformSIMTransferSpecifier_cellPressed___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setIsRequestingFirstViewController:0];
    v6 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 hostController];
      v8 = [v7 navigationController];
      v14 = 134217984;
      v15 = [v8 modalPresentationStyle];
      _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "modal style:%ld", &v14, 0xCu);
    }

    v9 = [v5 hostController];
    v10 = [v9 isInModalPresentation];

    if (v10)
    {
      v11 = [v5 hostController];
      [v11 showController:v3 animate:1];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v3];
      [v11 setModalPresentationStyle:2];
      v12 = [v5 hostController];
      [v12 presentViewController:v11 animated:1 completion:0];
    }

    [v5 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v14 = 138412290;
    v15 = objc_opt_class();
    _os_log_error_impl(&dword_2658DE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "invalid %@", &v14, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)simSetupFlowCompleted:(unint64_t)a3
{
  v4 = [(PSUICrossPlatformSIMTransferSpecifier *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "finish x sim transfer flow", buf, 2u);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__PSUICrossPlatformSIMTransferSpecifier_simSetupFlowCompleted___block_invoke;
  block[3] = &unk_279BA9EA0;
  objc_copyWeak(&v6, buf);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __63__PSUICrossPlatformSIMTransferSpecifier_simSetupFlowCompleted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained hostController];
    v3 = [v2 navigationController];
    [v3 dismissViewControllerAnimated:1 completion:0];

    [v4 setFlow:0];
    WeakRetained = v4;
  }
}

- (void)showSpinner:(BOOL)a3
{
  v3 = a3;
  if (self->_spinner)
  {
    v5 = *MEMORY[0x277D40148];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = self->_spinner;
    self->_spinner = v6;

    v5 = *MEMORY[0x277D40148];
    v8 = [(PSUICrossPlatformSIMTransferSpecifier *)self propertyForKey:*MEMORY[0x277D40148]];
    v9 = [v8 accessoryView];
    originAccessoryView = self->_originAccessoryView;
    self->_originAccessoryView = v9;
  }

  v11 = [(PSUICrossPlatformSIMTransferSpecifier *)self propertyForKey:v5];
  v12 = v11;
  if (v11)
  {
    if (v3)
    {
      [v11 setAccessoryView:self->_spinner];
      [(UIActivityIndicatorView *)self->_spinner startAnimating];
    }

    else
    {
      [(UIActivityIndicatorView *)self->_spinner stopAnimating];
      [v12 setAccessoryView:self->_originAccessoryView];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PSUICrossPlatformSIMTransferSpecifier_showSpinner___block_invoke;
    block[3] = &unk_279BA9D58;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v13 = [(PSUICrossPlatformSIMTransferSpecifier *)self getLogger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2658DE000, v13, OS_LOG_TYPE_ERROR, "invalid table cell", buf, 2u);
    }
  }
}

void __53__PSUICrossPlatformSIMTransferSpecifier_showSpinner___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
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

      if (self->_spinner)
      {
        [v8 setAccessoryView:?];
      }
    }
  }

  if ([*MEMORY[0x277D3FF38] isEqualToString:v7])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSUICrossPlatformSIMTransferSpecifier showSpinner:](self, "showSpinner:", [v6 BOOLValue] ^ 1);
    }
  }

  v11.receiver = self;
  v11.super_class = PSUICrossPlatformSIMTransferSpecifier;
  [(PSUICrossPlatformSIMTransferSpecifier *)&v11 setProperty:v6 forKey:v7];
}

- (PSListController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

- (UIViewController)firstViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_firstViewController);

  return WeakRetained;
}

@end
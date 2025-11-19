@interface PSUICrossPlatformGroup
- (PSListController)listController;
- (PSUICrossPlatformGroup)initWithListController:(id)a3 groupSpecifier:(id)a4;
- (id)specifiers;
- (void)crossPlatformPressed:(id)a3;
- (void)simSetupFlowCompleted:(unint64_t)a3;
@end

@implementation PSUICrossPlatformGroup

- (PSUICrossPlatformGroup)initWithListController:(id)a3 groupSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PSUICrossPlatformGroup;
  v8 = [(PSUICrossPlatformGroup *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_listController, v6);
    objc_storeStrong(&v9->_groupSpecifier, a4);
    groupSpecifier = v9->_groupSpecifier;
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"TARGET_TRANSFER_FROM_ANDROID_FOOTER" value:&stru_287733598 table:@"Cellular"];
    v14 = [v11 stringWithFormat:v13];
    [(PSSpecifier *)groupSpecifier setProperty:v14 forKey:*MEMORY[0x277D3FF88]];
  }

  return v9;
}

- (id)specifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277D3FAD8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TARGET_TRANSFER_FROM_ANDROID" value:&stru_287733598 table:@"Cellular"];
  v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v7 setButtonAction:sel_crossPlatformPressed_];
  [v3 addObject:v7];

  return v3;
}

- (void)simSetupFlowCompleted:(unint64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [(PSUICrossPlatformGroup *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[PSUICrossPlatformGroup simSetupFlowCompleted:]";
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PSUICrossPlatformGroup_simSetupFlowCompleted___block_invoke;
  block[3] = &unk_279BA9EA0;
  objc_copyWeak(&v7, buf);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__PSUICrossPlatformGroup_simSetupFlowCompleted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[3];
    WeakRetained[3] = 0;
    v4 = WeakRetained;

    v3 = objc_loadWeakRetained(v4 + 2);
    [v3 dismissViewControllerAnimated:1 completion:0];

    WeakRetained = v4;
  }
}

- (void)crossPlatformPressed:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  v6 = [WeakRetained view];
  [v6 setUserInteractionEnabled:0];

  v7 = *MEMORY[0x277D49558];
  v16[0] = *MEMORY[0x277D49548];
  v16[1] = v7;
  v17[0] = &unk_287748FA8;
  v17[1] = MEMORY[0x277CBEC28];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v9 = [MEMORY[0x277D49530] flowWithOptions:v8];
  flow = self->_flow;
  self->_flow = v9;

  [(TSSIMSetupFlow *)self->_flow setDelegate:self];
  objc_initWeak(&location, self);
  v11 = self->_flow;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__PSUICrossPlatformGroup_crossPlatformPressed___block_invoke;
  v13[3] = &unk_279BA9EC8;
  objc_copyWeak(&v14, &location);
  v13[4] = self;
  [(TSSIMSetupFlow *)v11 firstViewController:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  v12 = *MEMORY[0x277D85DE8];
}

void __47__PSUICrossPlatformGroup_crossPlatformPressed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 2);
    v7 = [v6 isInModalPresentation];

    if (v7)
    {
      v8 = objc_loadWeakRetained(v5 + 2);
      [v8 showController:v3 animate:1];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v3];
      [v8 setModalPresentationStyle:2];
      v10 = objc_loadWeakRetained(v5 + 2);
      [v10 presentViewController:v8 animated:1 completion:0];
    }

    v9 = objc_loadWeakRetained(v5 + 2);
    v11 = [v9 view];
    [v11 setUserInteractionEnabled:1];
  }

  else
  {
    v9 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_2658DE000, v9, OS_LOG_TYPE_ERROR, "invalid PSUICrossPlatformGroup", v12, 2u);
    }
  }
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

@end
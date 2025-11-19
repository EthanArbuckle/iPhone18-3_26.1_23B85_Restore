@interface PSUIPlanPendingTransferDetailController
- (PSUIPlanPendingTransferDetailController)init;
- (id)specifiers;
- (void)cellularPlanChanged;
@end

@implementation PSUIPlanPendingTransferDetailController

- (PSUIPlanPendingTransferDetailController)init
{
  v5.receiver = self;
  v5.super_class = PSUIPlanPendingTransferDetailController;
  v2 = [(PSUIPlanPendingTransferDetailController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_cellularPlanChanged name:@"PSUICellularPlanChanged" object:0];
  }

  return v2;
}

- (void)cellularPlanChanged
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(PSUIPlanPendingTransferDetailController *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[PSUIPlanPendingTransferDetailController cellularPlanChanged]";
    v9 = 2112;
    v10 = @"PSUICellularPlanChanged";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s received notification %@", buf, 0x16u);
  }

  planPendingTransferMenus = self->_planPendingTransferMenus;
  self->_planPendingTransferMenus = 0;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__PSUIPlanPendingTransferDetailController_cellularPlanChanged__block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__PSUIPlanPendingTransferDetailController_cellularPlanChanged__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) reloadSpecifiers];
  if (![*(*(a1 + 32) + *MEMORY[0x277D3FC48]) count])
  {
    v2 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[PSUIPlanPendingTransferDetailController cellularPlanChanged]_block_invoke";
      _os_log_impl(&dword_2658DE000, v2, OS_LOG_TYPE_DEFAULT, "%s No specifiers to show, returning to Settings > Cellular view", &v6, 0xCu);
    }

    v3 = [*(a1 + 32) navigationController];
    v4 = [v3 popViewControllerAnimated:1];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)specifiers
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(PSUIPlanPendingTransferDetailController *)self getLogger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = "[PSUIPlanPendingTransferDetailController specifiers]";
      _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s (re)loading specifiers", &v15, 0xCu);
    }

    v6 = objc_opt_new();
    planPendingTransferMenus = self->_planPendingTransferMenus;
    if (!planPendingTransferMenus)
    {
      v8 = [PSUIPlanPendingTransferMenusGroup alloc];
      v9 = [(PSUIPlanPendingTransferMenusGroup *)v8 initWithHostController:self parentSpecifier:*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20])];
      v10 = self->_planPendingTransferMenus;
      self->_planPendingTransferMenus = v9;

      planPendingTransferMenus = self->_planPendingTransferMenus;
    }

    v11 = [(PSUIPlanPendingTransferMenusGroup *)planPendingTransferMenus specifiers];
    [v6 addObjectsFromArray:v11];

    [MEMORY[0x277D4D878] logSpecifiers:v6 origin:@"[PSUIPlanPendingTransferDetailController specifiers] end"];
    v12 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v6;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

@end
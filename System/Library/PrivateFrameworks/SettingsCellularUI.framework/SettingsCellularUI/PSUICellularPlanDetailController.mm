@interface PSUICellularPlanDetailController
- (PSUICellularPlanDetailController)init;
- (id)specifiers;
- (void)_cellularPlanChanged:(id)changed;
- (void)dealloc;
@end

@implementation PSUICellularPlanDetailController

- (PSUICellularPlanDetailController)init
{
  v5.receiver = self;
  v5.super_class = PSUICellularPlanDetailController;
  v2 = [(PSUICellularPlanDetailController *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__cellularPlanChanged_ name:@"PSUICellularPlanChanged" object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSUICellularPlanDetailController;
  [(PSUICellularPlanDetailController *)&v4 dealloc];
}

- (id)specifiers
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    getLogger = [(PSUICellularPlanDetailController *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[PSUICellularPlanDetailController specifiers]";
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s (re)loading specifiers", &v18, 0xCu);
    }

    v6 = objc_opt_new();
    v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SUBSCRIPTION_CONTEXT_MENUS_GROUP"];
    [v6 addObject:v7];
    subscriptionContextMenus = self->_subscriptionContextMenus;
    if (subscriptionContextMenus)
    {
      [(PSUISubscriptionContextMenusGroup *)subscriptionContextMenus setGroupSpecifier:v7];
    }

    else
    {
      v9 = [PSUISubscriptionContextMenusGroup alloc];
      v10 = [PSUISubscriptionContextMenusProductionFactory alloc];
      v11 = [(PSUISubscriptionContextMenusProductionFactory *)v10 initWithHostController:self parentSpecifier:*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FD20]) groupSpecifier:v7 popViewControllerOnPlanRemoval:1];
      v12 = [(PSUISubscriptionContextMenusGroup *)v9 initWithFactory:v11];
      v13 = self->_subscriptionContextMenus;
      self->_subscriptionContextMenus = v12;
    }

    specifiers = [(PSUISubscriptionContextMenusGroup *)self->_subscriptionContextMenus specifiers];
    [v6 addObjectsFromArray:specifiers];

    [MEMORY[0x277D4D878] logSpecifiers:v6 origin:@"[PSUICellularPlanDetailController specifiers] end"];
    v15 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v6;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_cellularPlanChanged:(id)changed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PSUICellularPlanDetailController__cellularPlanChanged___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end
@interface PSUIDataPlanDetailsController
- (PSUIDataPlanDetailsController)init;
- (PSUIDataPlanDetailsController)initWithParentSpecifier:(id)a3;
- (id)specifiers;
- (id)titleDescription;
- (void)createOrUpdateSubscriptionContextMenuGroup:(id)a3;
@end

@implementation PSUIDataPlanDetailsController

- (PSUIDataPlanDetailsController)init
{
  v5.receiver = self;
  v5.super_class = PSUIDataPlanDetailsController;
  v2 = [(PSUIDataPlanDetailsController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSUIDataPlanDetailsController *)v2 setModalInPresentation:1];
  }

  return v3;
}

- (PSUIDataPlanDetailsController)initWithParentSpecifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PSUIDataPlanDetailsController;
  v6 = [(PSUIDataPlanDetailsController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentSpecifier, a3);
    v8 = [(PSUIDataPlanDetailsController *)v7 titleDescription];
    if ([v8 length])
    {
      [(PSUIDataPlanDetailsController *)v7 setTitle:v8];
    }
  }

  return v7;
}

- (id)specifiers
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(PSSpecifier *)self->_parentSpecifier userInfo];
  v5 = [v4 item];
  v6 = v5;
  if (v5)
  {
    if ([v5 isSelected])
    {
      v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CELLULAR_ACCOUNT_DETAILS_GROUP"];
      if (![(PSUICellularDataPlanDetailGroup *)self->_cellularDataPlanDetailGroup isFlowRunning])
      {
        v8 = [[PSUICellularDataPlanDetailGroup alloc] initWithListController:self groupSpecifier:v7];
        cellularDataPlanDetailGroup = self->_cellularDataPlanDetailGroup;
        self->_cellularDataPlanDetailGroup = v8;
      }

      v10 = [(PSUICellularDataPlanDetailGroup *)self->_cellularDataPlanDetailGroup specifiers];
      if ([v10 count])
      {
        [v3 addObject:v7];
        [v3 ps_addSpecifiers:v10 toGroup:v7];
      }
    }

    v11 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SUBSCRIPTION_CONTEXT_MENUS_GROUP"];
    [(PSUIDataPlanDetailsController *)self createOrUpdateSubscriptionContextMenuGroup:v11];
    v12 = [(PSUISubscriptionContextMenusGroup *)self->_subscriptionContextMenus specifiers];
    if ([v12 count])
    {
      v13 = [(PSUIDataPlanDetailsController *)self getLogger];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315138;
        v20 = "[PSUIDataPlanDetailsController specifiers]";
        _os_log_impl(&dword_2658DE000, v13, OS_LOG_TYPE_DEFAULT, "%s showing subscription context menus group", &v19, 0xCu);
      }

      [v3 addObject:v11];
      [v3 ps_addSpecifiers:v12 toGroup:v11];
    }

    v14 = *MEMORY[0x277D3FC48];
    v15 = *(&self->super.super.super.super.super.isa + v14);
    *(&self->super.super.super.super.super.isa + v14) = v3;
    v16 = v3;

    v3 = *(&self->super.super.super.super.super.isa + v14);
  }

  else
  {
    v11 = [(PSUIDataPlanDetailsController *)self getLogger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_2658DE000, v11, OS_LOG_TYPE_DEFAULT, "Plan item is not set!", &v19, 2u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)createOrUpdateSubscriptionContextMenuGroup:(id)a3
{
  v17 = a3;
  if (self->_subscriptionContextMenus)
  {
    v4 = *MEMORY[0x277D3FD20];
    v5 = *MEMORY[0x277D40128];
    v6 = [*(&self->super.super.super.super.super.isa + v4) propertyForKey:*MEMORY[0x277D40128]];

    if (v6)
    {
      v7 = [(PSUISubscriptionContextMenusGroup *)self->_subscriptionContextMenus parentSpecifier];
      v8 = [*(&self->super.super.super.super.super.isa + v4) propertyForKey:v5];
      [v7 setProperty:v8 forKey:v5];
    }

    v9 = *MEMORY[0x277D3FE70];
    v10 = [*(&self->super.super.super.super.super.isa + v4) propertyForKey:*MEMORY[0x277D3FE70]];

    if (v10)
    {
      v11 = [(PSUISubscriptionContextMenusGroup *)self->_subscriptionContextMenus parentSpecifier];
      v12 = [*(&self->super.super.super.super.super.isa + v4) propertyForKey:v9];
      [v11 setProperty:v12 forKey:v9];
    }

    [(PSUISubscriptionContextMenusGroup *)self->_subscriptionContextMenus setGroupSpecifier:v17];
  }

  else
  {
    v13 = [PSUISubscriptionContextMenusGroup alloc];
    v14 = [[PSUISubscriptionContextMenusProductionFactory alloc] initWithHostController:self parentSpecifier:self->_parentSpecifier groupSpecifier:v17 popViewControllerOnPlanRemoval:0];
    v15 = [(PSUISubscriptionContextMenusGroup *)v13 initWithFactory:v14];
    subscriptionContextMenus = self->_subscriptionContextMenus;
    self->_subscriptionContextMenus = v15;
  }
}

- (id)titleDescription
{
  v2 = [(PSSpecifier *)self->_parentSpecifier userInfo];
  v3 = [v2 item];
  if ([v3 isBackedByCellularPlan])
  {
    v4 = [v3 plan];
    v5 = [v4 planDescription];

    v6 = [v3 plan];
    v7 = [v6 carrierName];

    if ([v5 length] && objc_msgSend(v7, "length") && (objc_msgSend(v5, "isEqualToString:", v7) & 1) == 0)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"CELLULAR_PLAN_CARRIER_AND_PLAN_NAME" value:&stru_287733598 table:@"Cellular"];
      v9 = [v10 stringWithFormat:v12, v7, v5];
    }

    else
    {
      if (v5)
      {
        v8 = v5;
      }

      else if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = [v3 name];
      }

      v9 = v8;
    }
  }

  else
  {
    v9 = [v3 name];
  }

  return v9;
}

@end
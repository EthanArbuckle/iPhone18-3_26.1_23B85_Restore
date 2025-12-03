@interface PSUIDataPlanDetailsController
- (PSUIDataPlanDetailsController)init;
- (PSUIDataPlanDetailsController)initWithParentSpecifier:(id)specifier;
- (id)specifiers;
- (id)titleDescription;
- (void)createOrUpdateSubscriptionContextMenuGroup:(id)group;
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

- (PSUIDataPlanDetailsController)initWithParentSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v10.receiver = self;
  v10.super_class = PSUIDataPlanDetailsController;
  v6 = [(PSUIDataPlanDetailsController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parentSpecifier, specifier);
    titleDescription = [(PSUIDataPlanDetailsController *)v7 titleDescription];
    if ([titleDescription length])
    {
      [(PSUIDataPlanDetailsController *)v7 setTitle:titleDescription];
    }
  }

  return v7;
}

- (id)specifiers
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  userInfo = [(PSSpecifier *)self->_parentSpecifier userInfo];
  item = [userInfo item];
  v6 = item;
  if (item)
  {
    if ([item isSelected])
    {
      v7 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CELLULAR_ACCOUNT_DETAILS_GROUP"];
      if (![(PSUICellularDataPlanDetailGroup *)self->_cellularDataPlanDetailGroup isFlowRunning])
      {
        v8 = [[PSUICellularDataPlanDetailGroup alloc] initWithListController:self groupSpecifier:v7];
        cellularDataPlanDetailGroup = self->_cellularDataPlanDetailGroup;
        self->_cellularDataPlanDetailGroup = v8;
      }

      specifiers = [(PSUICellularDataPlanDetailGroup *)self->_cellularDataPlanDetailGroup specifiers];
      if ([specifiers count])
      {
        [v3 addObject:v7];
        [v3 ps_addSpecifiers:specifiers toGroup:v7];
      }
    }

    getLogger2 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SUBSCRIPTION_CONTEXT_MENUS_GROUP"];
    [(PSUIDataPlanDetailsController *)self createOrUpdateSubscriptionContextMenuGroup:getLogger2];
    specifiers2 = [(PSUISubscriptionContextMenusGroup *)self->_subscriptionContextMenus specifiers];
    if ([specifiers2 count])
    {
      getLogger = [(PSUIDataPlanDetailsController *)self getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315138;
        v20 = "[PSUIDataPlanDetailsController specifiers]";
        _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s showing subscription context menus group", &v19, 0xCu);
      }

      [v3 addObject:getLogger2];
      [v3 ps_addSpecifiers:specifiers2 toGroup:getLogger2];
    }

    v14 = *MEMORY[0x277D3FC48];
    v15 = *(&self->super.super.super.super.super.isa + v14);
    *(&self->super.super.super.super.super.isa + v14) = v3;
    v16 = v3;

    v3 = *(&self->super.super.super.super.super.isa + v14);
  }

  else
  {
    getLogger2 = [(PSUIDataPlanDetailsController *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Plan item is not set!", &v19, 2u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)createOrUpdateSubscriptionContextMenuGroup:(id)group
{
  groupCopy = group;
  if (self->_subscriptionContextMenus)
  {
    v4 = *MEMORY[0x277D3FD20];
    v5 = *MEMORY[0x277D40128];
    v6 = [*(&self->super.super.super.super.super.isa + v4) propertyForKey:*MEMORY[0x277D40128]];

    if (v6)
    {
      parentSpecifier = [(PSUISubscriptionContextMenusGroup *)self->_subscriptionContextMenus parentSpecifier];
      v8 = [*(&self->super.super.super.super.super.isa + v4) propertyForKey:v5];
      [parentSpecifier setProperty:v8 forKey:v5];
    }

    v9 = *MEMORY[0x277D3FE70];
    v10 = [*(&self->super.super.super.super.super.isa + v4) propertyForKey:*MEMORY[0x277D3FE70]];

    if (v10)
    {
      parentSpecifier2 = [(PSUISubscriptionContextMenusGroup *)self->_subscriptionContextMenus parentSpecifier];
      v12 = [*(&self->super.super.super.super.super.isa + v4) propertyForKey:v9];
      [parentSpecifier2 setProperty:v12 forKey:v9];
    }

    [(PSUISubscriptionContextMenusGroup *)self->_subscriptionContextMenus setGroupSpecifier:groupCopy];
  }

  else
  {
    v13 = [PSUISubscriptionContextMenusGroup alloc];
    v14 = [[PSUISubscriptionContextMenusProductionFactory alloc] initWithHostController:self parentSpecifier:self->_parentSpecifier groupSpecifier:groupCopy popViewControllerOnPlanRemoval:0];
    v15 = [(PSUISubscriptionContextMenusGroup *)v13 initWithFactory:v14];
    subscriptionContextMenus = self->_subscriptionContextMenus;
    self->_subscriptionContextMenus = v15;
  }
}

- (id)titleDescription
{
  userInfo = [(PSSpecifier *)self->_parentSpecifier userInfo];
  item = [userInfo item];
  if ([item isBackedByCellularPlan])
  {
    plan = [item plan];
    planDescription = [plan planDescription];

    plan2 = [item plan];
    carrierName = [plan2 carrierName];

    if ([planDescription length] && objc_msgSend(carrierName, "length") && (objc_msgSend(planDescription, "isEqualToString:", carrierName) & 1) == 0)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"CELLULAR_PLAN_CARRIER_AND_PLAN_NAME" value:&stru_287733598 table:@"Cellular"];
      name2 = [v10 stringWithFormat:v12, carrierName, planDescription];
    }

    else
    {
      if (planDescription)
      {
        name = planDescription;
      }

      else if (carrierName)
      {
        name = carrierName;
      }

      else
      {
        name = [item name];
      }

      name2 = name;
    }
  }

  else
  {
    name2 = [item name];
  }

  return name2;
}

@end
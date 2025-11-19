@interface PSUICellularDataPlanDetailGroup
+ (id)accountManageButtonForPlanItem:(id)a3 target:(id)a4;
+ (id)specifiersFromCellularPlanItem:(id)a3 target:(id)a4;
+ (void)configurePlanSpecifiers:(id)a3 planItem:(id)a4 target:(id)a5;
- (PSListController)listController;
- (PSSpecifier)groupSpecifier;
- (PSUICellularDataPlanDetailGroup)initWithListController:(id)a3 groupSpecifier:(id)a4;
- (id)getPlanCellDataNumber:(id)a3;
- (id)getPlanDetailedStatus:(id)a3;
- (id)getPlanExpireDate:(id)a3;
- (id)getPlanPurchaseDate:(id)a3;
- (id)getPlanStatus:(id)a3;
- (id)getPlanStatusDataOnly:(id)a3;
- (id)getPlanStatusDate:(id)a3;
- (id)lastUpdatedText;
- (id)localizedManageAccountAlertTitle:(id)a3;
- (id)removeCellularPlanConfirmationMessage:(id)a3;
- (id)removeCellularPlanConfirmationTitle:(id)a3;
- (id)specifiers;
- (void)handleAccountSettingsTapped:(id)a3;
- (void)handleRemovePlanTapped:(id)a3;
- (void)managePlanPressed:(id)a3;
- (void)simSetupFlowCompleted:(unint64_t)a3;
@end

@implementation PSUICellularDataPlanDetailGroup

+ (id)specifiersFromCellularPlanItem:(id)a3 target:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [v6 plan];

  if (v9)
  {
    [a1 configurePlanSpecifiers:v8 planItem:v6 target:v7];
  }

  else
  {
    v10 = [MEMORY[0x277D4D830] loggerWithCategory:@"CellularDataPlanDetailGroup"];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "+[PSUICellularDataPlanDetailGroup specifiersFromCellularPlanItem:target:]";
      _os_log_impl(&dword_2658DE000, v10, OS_LOG_TYPE_DEFAULT, "%s: Invalid selected cellular plan", &v13, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)accountManageButtonForPlanItem:(id)a3 target:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 plan];
  v8 = [v7 status];

  if (v8 == 1)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = @"CELLULAR_ACCOUNT_OPTIONS_RENEW...";
    v11 = [v9 localizedStringForKey:@"CELLULAR_ACCOUNT_OPTIONS_RENEW..." value:&stru_287733598 table:@"Cellular"];
  }

  else
  {
    v12 = [v5 plan];
    v9 = [v12 carrierName];

    if ([v9 length])
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"CELLULAR_ACCOUNT_OPTIONS_MANAGE_CARRIER_%@_ACCOUNT..." value:&stru_287733598 table:@"Cellular"];
      v11 = [v13 stringWithFormat:v15, v9];
    }

    else
    {
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v14 localizedStringForKey:@"CELLULAR_ACCOUNT_OPTIONS_MANAGE_ACCOUNT..." value:&stru_287733598 table:@"Cellular"];
    }

    v10 = 0;
  }

  v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v11 target:v6 set:0 get:0 detail:0 cell:13 edit:0];

  [v16 setIdentifier:v10];
  [v16 setButtonAction:sel_managePlanPressed_];
  if (([v5 isSelectable] & 1) == 0)
  {
    [v16 setCellType:4];
    [v16 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  return v16;
}

+ (void)configurePlanSpecifiers:(id)a3 planItem:(id)a4 target:(id)a5
{
  v43 = a3;
  v8 = a4;
  v9 = a5;
  if (v43)
  {
    v10 = [v8 plan];

    if (v10)
    {
      v11 = [v8 plan];
      v12 = [v11 status];

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v14 = [v8 plan];
        [v14 billingStartDate];
        v16 = v15;

        if (v16 <= 0.0)
        {
          v13 = 0;
        }

        else
        {
          v17 = MEMORY[0x277D3FAD8];
          v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v19 = [v18 localizedStringForKey:@"CELLULAR_PLAN_PURCHASE_TITLE" value:&stru_287733598 table:@"Cellular"];
          v13 = [v17 preferenceSpecifierNamed:v19 target:v9 set:0 get:sel_getPlanPurchaseDate_ detail:0 cell:4 edit:0];

          [v13 setIdentifier:@"CELLULAR_PLAN_PURCHASE_DATE"];
          [v43 addObject:v13];
        }

        v20 = [v8 plan];
        [v20 billingEndDate];
        v22 = v21;

        if (v22 > 0.0)
        {
          v23 = MEMORY[0x277D3FAD8];
          v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v25 = [v24 localizedStringForKey:@"CELLULAR_PLAN_EXPIRE_TITLE" value:&stru_287733598 table:@"Cellular"];
          v26 = [v23 preferenceSpecifierNamed:v25 target:v9 set:0 get:sel_getPlanExpireDate_ detail:0 cell:4 edit:0];

          [v26 setIdentifier:@"CELLULAR_PLAN_EXPIRE"];
          [v43 addObject:v26];
          v13 = v26;
        }

        v27 = [v8 plan];
        [v27 timestamp];
        v29 = v28;

        if (v29 > 0.0)
        {
          v30 = MEMORY[0x277D3FAD8];
          v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v32 = [v31 localizedStringForKey:@"CELLULAR_PLAN_STATUS_DATE_TITLE" value:&stru_287733598 table:@"Cellular"];
          v33 = [v30 preferenceSpecifierNamed:v32 target:v9 set:0 get:sel_getPlanStatusDate_ detail:0 cell:4 edit:0];

          [v33 setIdentifier:@"CELLULAR_PLAN_STATUS_DATE"];
          [v43 addObject:v33];
          v13 = v33;
        }
      }

      v34 = [v8 plan];
      v35 = [v34 phoneNumber];

      if ([v35 length])
      {
        v36 = MEMORY[0x277D3FAD8];
        v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v38 = [v37 localizedStringForKey:@"CELLULAR_PLAN_CELL_NUMBER_TITLE" value:&stru_287733598 table:@"Cellular"];
        v39 = [v36 preferenceSpecifierNamed:v38 target:v9 set:0 get:sel_getPlanCellDataNumber_ detail:0 cell:4 edit:0];

        [v43 addObject:v39];
        v13 = v39;
      }

      v40 = [v8 plan];
      v41 = [v40 accountURL];

      if (v41)
      {
        v42 = [a1 accountManageButtonForPlanItem:v8 target:v9];
        [v43 addObject:v42];
      }
    }
  }
}

- (PSUICellularDataPlanDetailGroup)initWithListController:(id)a3 groupSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PSUICellularDataPlanDetailGroup;
  v8 = [(PSUICellularDataPlanDetailGroup *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_listController, v6);
    objc_storeWeak(&v9->_groupSpecifier, v7);
    flow = v9->_flow;
    v9->_flow = 0;
  }

  return v9;
}

- (id)specifiers
{
  v3 = +[PSUICellularPlanManagerCache sharedInstance];
  v4 = [v3 selectedPlanItem];

  v5 = [objc_opt_class() specifiersFromCellularPlanItem:v4 target:self];

  return v5;
}

- (id)lastUpdatedText
{
  v2 = +[PSUICellularPlanManagerCache sharedInstance];
  v3 = [v2 selectedPlanItem];

  v4 = [v3 plan];
  [v4 timestamp];
  v6 = v5;

  if (v6 == 0.0)
  {
    v15 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCA968];
    v8 = MEMORY[0x277CBEAA8];
    v9 = [v3 plan];
    [v9 timestamp];
    v10 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
    v11 = [v7 localizedStringFromDate:v10 dateStyle:2 timeStyle:1];

    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"CELLULAR_PLAN_LAST_UPDATED" value:&stru_287733598 table:@"Cellular"];
    v15 = [v12 stringWithFormat:v14, v11];
  }

  return v15;
}

- (id)localizedManageAccountAlertTitle:(id)a3
{
  v3 = a3;
  v4 = [v3 plan];
  v5 = [v4 status];

  if (v5 == 1)
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"CELLULAR_ACCOUNT_OPTIONS_RENEW" value:&stru_287733598 table:@"Cellular"];
  }

  else
  {
    v8 = [v3 plan];
    v6 = [v8 carrierName];

    if ([v6 length])
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"CELLULAR_ACCOUNT_OPTIONS_MANAGE_CARRIER_%@_ACCOUNT" value:&stru_287733598 table:@"Cellular"];
      v7 = [v9 stringWithFormat:v11, v6];
    }

    else
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v10 localizedStringForKey:@"CELLULAR_ACCOUNT_OPTIONS_MANAGE_ACCOUNT" value:&stru_287733598 table:@"Cellular"];
    }
  }

  return v7;
}

- (id)removeCellularPlanConfirmationMessage:(id)a3
{
  v3 = [a3 plan];
  v4 = [v3 carrierName];

  if ([v4 length])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"REMOVE_CARRIER_%@_PLAN_CONFIRMATION" value:&stru_287733598 table:@"Cellular"];
    v8 = [v5 stringWithFormat:v7, v4];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v6 localizedStringForKey:@"REMOVE_PLAN_CONFIRMATION" value:&stru_287733598 table:@"Cellular"];
  }

  return v8;
}

- (id)removeCellularPlanConfirmationTitle:(id)a3
{
  v3 = [a3 plan];
  v4 = [v3 carrierName];

  if ([v4 length])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"REMOVE_CARRIER_%@_PLAN" value:&stru_287733598 table:@"Cellular"];
    v8 = [v5 stringWithFormat:v7, v4];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v6 localizedStringForKey:@"REMOVE_PLAN" value:&stru_287733598 table:@"Cellular"];
  }

  return v8;
}

- (void)managePlanPressed:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = +[PSUICellularPlanManagerCache sharedInstance];
  v5 = [v4 selectedPlanItem];

  v6 = [(PSUICellularDataPlanDetailGroup *)self getLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[PSUICellularDataPlanDetailGroup managePlanPressed:]";
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
  }

  v7 = MEMORY[0x277D75110];
  v8 = [(PSUICellularDataPlanDetailGroup *)self localizedManageAccountAlertTitle:v5];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"MANAGE_ACCOUNT_DESCRIPTION" value:&stru_287733598 table:@"Cellular"];
  v11 = [v7 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

  v12 = [v5 plan];
  v13 = [v12 accountURL];

  if (v13)
  {
    v14 = MEMORY[0x277D750F8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"ACCOUNT_SETTINGS" value:&stru_287733598 table:@"Cellular"];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __53__PSUICellularDataPlanDetailGroup_managePlanPressed___block_invoke;
    v25[3] = &unk_279BAA160;
    v25[4] = self;
    v26 = v5;
    v17 = [v14 actionWithTitle:v16 style:0 handler:v25];

    [v11 addAction:v17];
  }

  v18 = MEMORY[0x277D750F8];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"CANCEL" value:&stru_287733598 table:@"Cellular"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __53__PSUICellularDataPlanDetailGroup_managePlanPressed___block_invoke_2;
  v24[3] = &unk_279BA9E70;
  v24[4] = self;
  v21 = [v18 actionWithTitle:v20 style:1 handler:v24];

  [v11 addAction:v21];
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  [WeakRetained presentViewController:v11 animated:1 completion:0];

  v23 = *MEMORY[0x277D85DE8];
}

void __53__PSUICellularDataPlanDetailGroup_managePlanPressed___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) ctPlan];
  [v1 handleAccountSettingsTapped:v2];
}

void __53__PSUICellularDataPlanDetailGroup_managePlanPressed___block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[PSUICellularDataPlanDetailGroup managePlanPressed:]_block_invoke_2";
    _os_log_impl(&dword_2658DE000, v1, OS_LOG_TYPE_DEFAULT, "%s cancel manage account", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (id)getPlanDetailedStatus:(id)a3
{
  v3 = +[PSUICellularPlanManagerCache sharedInstance];
  v4 = [v3 selectedPlanItem];

  v5 = PSUIFormatPlanStatusForPlan(v4);

  return v5;
}

- (id)getPlanStatus:(id)a3
{
  v3 = +[PSUICellularPlanManagerCache sharedInstance];
  v4 = [v3 selectedPlanItem];

  if ([v4 isBackedByCellularPlan])
  {
    v5 = [v4 plan];
    v6 = PSUIGetPlanSubscriptionStatus([v5 status]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getPlanStatusDataOnly:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = +[PSUICellularPlanManagerCache sharedInstance];
  v4 = [v3 selectedPlanItem];

  v5 = [v4 plan];
  v6 = [v5 dataUsage];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        [v14 dataCapacity];
        v12 = v12 + v15;
        [v14 dataUsed];
        v11 = v11 + v16;
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  v17 = MEMORY[0x277CCACA8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"CELLULAR_PLAN_DATA_USAGE_SHORT" value:&stru_287733598 table:@"Cellular"];
  v20 = [MEMORY[0x277D4D878] usageSizeString:v11];
  v21 = [MEMORY[0x277D4D878] usageSizeString:v12];
  v22 = [v17 stringWithFormat:v19, v20, v21, v25];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)getPlanStatusDate:(id)a3
{
  v3 = +[PSUICellularPlanManagerCache sharedInstance];
  v4 = [v3 selectedPlanItem];

  if ([v4 isBackedByCellularPlan])
  {
    v5 = MEMORY[0x277CCA968];
    v6 = MEMORY[0x277CBEAA8];
    v7 = [v4 plan];
    [v7 timestamp];
    v8 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
    v9 = [v5 localizedStringFromDate:v8 dateStyle:2 timeStyle:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)getPlanPurchaseDate:(id)a3
{
  v3 = +[PSUICellularPlanManagerCache sharedInstance];
  v4 = [v3 selectedPlanItem];

  if ([v4 isBackedByCellularPlan])
  {
    v5 = MEMORY[0x277CCA968];
    v6 = MEMORY[0x277CBEAA8];
    v7 = [v4 plan];
    [v7 billingStartDate];
    v8 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
    v9 = [v5 localizedStringFromDate:v8 dateStyle:2 timeStyle:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)getPlanExpireDate:(id)a3
{
  v3 = +[PSUICellularPlanManagerCache sharedInstance];
  v4 = [v3 selectedPlanItem];

  if ([v4 isBackedByCellularPlan])
  {
    v5 = MEMORY[0x277CCA968];
    v6 = MEMORY[0x277CBEAA8];
    v7 = [v4 plan];
    [v7 billingEndDate];
    v8 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
    v9 = [v5 localizedStringFromDate:v8 dateStyle:2 timeStyle:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)getPlanCellDataNumber:(id)a3
{
  v3 = +[PSUICellularPlanManagerCache sharedInstance];
  v4 = [v3 selectedPlanItem];

  v5 = [v4 plan];
  v6 = [v5 phoneNumber];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [v4 plan];
    v9 = [v8 phoneNumber];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)handleAccountSettingsTapped:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUICellularDataPlanDetailGroup *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[PSUICellularDataPlanDetailGroup handleAccountSettingsTapped:]";
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s account settings: %@", buf, 0x16u);
  }

  v13[0] = *MEMORY[0x277D49548];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v13[1] = *MEMORY[0x277D49580];
  v14[0] = v6;
  v14[1] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v8 = [(PSUICellularDataPlanDetailGroup *)self getLogger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[PSUICellularDataPlanDetailGroup handleAccountSettingsTapped:]";
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "%s - launching flow with options: %@", buf, 0x16u);
  }

  v9 = [MEMORY[0x277D49530] flowWithOptions:v7];
  flow = self->_flow;
  self->_flow = v9;

  [(TSSIMSetupFlow *)self->_flow setDelegate:self];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__PSUICellularDataPlanDetailGroup_handleAccountSettingsTapped___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v11 = *MEMORY[0x277D85DE8];
}

void __63__PSUICellularDataPlanDetailGroup_handleAccountSettingsTapped___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 sf_isiPad];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D757A0]);
    v5 = [*(*(a1 + 32) + 8) firstViewController];
    v7 = [v4 initWithRootViewController:v5];

    [v7 setModalPresentationStyle:2];
  }

  else
  {
    v7 = [*(*(a1 + 32) + 8) firstViewController];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained presentViewController:v7 animated:1 completion:0];
}

- (void)handleRemovePlanTapped:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUICellularDataPlanDetailGroup *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v25 = "[PSUICellularDataPlanDetailGroup handleRemovePlanTapped:]";
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s remove plan: %@", buf, 0x16u);
  }

  v6 = MEMORY[0x277D75110];
  v7 = [(PSUICellularDataPlanDetailGroup *)self removeCellularPlanConfirmationTitle:v4];
  v8 = [(PSUICellularDataPlanDetailGroup *)self removeCellularPlanConfirmationMessage:v4];
  v9 = [v6 alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = MEMORY[0x277D750F8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"REMOVE" value:&stru_287733598 table:@"Cellular"];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__PSUICellularDataPlanDetailGroup_handleRemovePlanTapped___block_invoke;
  v22[3] = &unk_279BAA160;
  v22[4] = self;
  v23 = v4;
  v13 = v4;
  v14 = [v10 actionWithTitle:v12 style:2 handler:v22];

  [v9 addAction:v14];
  v15 = MEMORY[0x277D750F8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"CANCEL" value:&stru_287733598 table:@"Cellular"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__PSUICellularDataPlanDetailGroup_handleRemovePlanTapped___block_invoke_106;
  v21[3] = &unk_279BA9E70;
  v21[4] = self;
  v18 = [v15 actionWithTitle:v17 style:1 handler:v21];

  [v9 addAction:v18];
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  [WeakRetained presentViewController:v9 animated:1 completion:0];

  v20 = *MEMORY[0x277D85DE8];
}

void __58__PSUICellularDataPlanDetailGroup_handleRemovePlanTapped___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 136315394;
    v9 = "[PSUICellularDataPlanDetailGroup handleRemovePlanTapped:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2658DE000, v2, OS_LOG_TYPE_DEFAULT, "%s confirmed remove plan: %@", buf, 0x16u);
  }

  v4 = [MEMORY[0x277CF96D8] sharedManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__PSUICellularDataPlanDetailGroup_handleRemovePlanTapped___block_invoke_104;
  v7[3] = &unk_279BAAAC8;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  [v4 didDeletePlanItem:v5 completion:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __58__PSUICellularDataPlanDetailGroup_handleRemovePlanTapped___block_invoke_104(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "Failed to delete plan item: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __58__PSUICellularDataPlanDetailGroup_handleRemovePlanTapped___block_invoke_106(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[PSUICellularDataPlanDetailGroup handleRemovePlanTapped:]_block_invoke";
    _os_log_impl(&dword_2658DE000, v1, OS_LOG_TYPE_DEFAULT, "%s cancel remove plan", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)simSetupFlowCompleted:(unint64_t)a3
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PSUICellularDataPlanDetailGroup_simSetupFlowCompleted___block_invoke;
  block[3] = &unk_279BAA050;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __57__PSUICellularDataPlanDetailGroup_simSetupFlowCompleted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = WeakRetained[1];
  WeakRetained[1] = 0;

  v3 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v4 = [v3 navigationController];
  [v4 dismissViewControllerAnimated:1 completion:0];
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

- (PSSpecifier)groupSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_groupSpecifier);

  return WeakRetained;
}

@end
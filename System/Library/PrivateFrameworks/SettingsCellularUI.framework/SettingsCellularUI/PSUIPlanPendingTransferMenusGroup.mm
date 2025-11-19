@interface PSUIPlanPendingTransferMenusGroup
- (PSListController)listController;
- (PSSpecifier)groupSpecifier;
- (PSUIPlanPendingTransferMenusGroup)initWithHostController:(id)a3 parentSpecifier:(id)a4;
- (PSUIPlanPendingTransferMenusGroup)initWithListController:(id)a3 groupSpecifier:(id)a4;
- (id)activatePlanSpecifier;
- (id)cancelConsentRequestSpecifier;
- (id)planActivationInfo;
- (id)planPendingTransferLabel:(id)a3;
- (id)planPendingTransferNumber:(id)a3;
- (id)specifiers;
- (void)addSpecifierForHeaderString:(id)a3;
- (void)removePlanPendingTransfer:(id)a3;
@end

@implementation PSUIPlanPendingTransferMenusGroup

- (PSUIPlanPendingTransferMenusGroup)initWithHostController:(id)a3 parentSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = PSUIPlanPendingTransferMenusGroup;
  v8 = [(PSUIPlanPendingTransferMenusGroup *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_parentSpecifier, a4);
    objc_storeWeak(&v9->_listController, v6);
    v10 = [MEMORY[0x277CF96D8] sharedManager];
    cellularPlanManager = v9->_cellularPlanManager;
    v9->_cellularPlanManager = v10;

    v12 = +[PSUICellularPlanManagerCache sharedInstance];
    planManagerCache = v9->_planManagerCache;
    v9->_planManagerCache = v12;

    v14 = [(PSSpecifier *)v9->_parentSpecifier propertyForKey:*MEMORY[0x277D3FE70]];
    v15 = [(PSUICellularPlanManagerCache *)v9->_planManagerCache planPendingTransferFromReference:v14];
    planPendingTransfer = v9->_planPendingTransfer;
    v9->_planPendingTransfer = v15;
  }

  return v9;
}

- (id)specifiers
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if (self->_planPendingTransfer)
  {
    [(PSUIPlanPendingTransferMenusGroup *)self addSpecifierForHeaderString:v3];
    v4 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v3 addObject:v4];
    v5 = [(PSUIPlanPendingTransferMenusGroup *)self activatePlanSpecifier];
    [v3 addObject:v5];
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v8 = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer deviceName];
      v9 = [v8 length];

      if (!v9)
      {
LABEL_9:
        [v3 addObject:v4];
        if ([(CTCellularPlanPendingTransfer *)self->_planPendingTransfer status]!= 2)
        {
          v27 = [(PSUIPlanPendingTransferMenusGroup *)self getLogger];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v36 = "[PSUIPlanPendingTransferMenusGroup specifiers]";
            _os_log_debug_impl(&dword_2658DE000, v27, OS_LOG_TYPE_DEBUG, "%s removing pending cellular plan", buf, 0xCu);
          }

          v28 = MEMORY[0x277D3FAD8];
          v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v30 = [v29 localizedStringForKey:@"REMOVE_PENDING_CELLULAR_PLAN" value:&stru_287733598 table:@"Gemini-Gemini"];
          v31 = [v28 preferenceSpecifierNamed:v30 target:self set:0 get:0 detail:0 cell:13 edit:0];

          [v31 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
          [v31 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
          [v31 setButtonAction:sel_removePlanPendingTransfer_];
          [v3 addObject:v31];
        }

        goto LABEL_14;
      }

      v34 = v5;
      v10 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CARRIER_NAME"];
      v11 = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer carrierName];
      [v10 setName:v11];

      [v3 addObject:v10];
      v12 = MEMORY[0x277D3FAD8];
      v13 = MEMORY[0x277CCACA8];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"USED_ON_%@" value:&stru_287733598 table:@"Gemini-Gemini"];
      v16 = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer deviceName];
      v17 = [v13 stringWithFormat:v15, v16];
      v18 = [v12 preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:0 cell:4 edit:0];

      [v3 addObject:v18];
    }

    else
    {
      v34 = v5;
      v10 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CARRIER_NAME"];
      v19 = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer carrierName];
      [v10 setName:v19];

      [v3 addObject:v10];
      v20 = MEMORY[0x277D3FAD8];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"CELLULAR_PLAN_LABEL" value:&stru_287733598 table:@"Gemini-Gemini"];
      v18 = [v20 preferenceSpecifierNamed:v22 target:self set:0 get:sel_planPendingTransferLabel_ detail:0 cell:4 edit:0];

      [v3 addObject:v18];
      v23 = MEMORY[0x277D3FAD8];
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:@"MY_NUMBER" value:&stru_287733598 table:@"Gemini-Gemini"];
      v26 = [v23 preferenceSpecifierNamed:v25 target:self set:0 get:sel_planPendingTransferNumber_ detail:0 cell:4 edit:0];

      [v3 addObject:v26];
    }

    v5 = v34;
    goto LABEL_9;
  }

  v4 = [(PSUIPlanPendingTransferMenusGroup *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v36 = "[PSUIPlanPendingTransferMenusGroup specifiers]";
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "%s No specifiers to show, because there is no pending plan with the given plan reference", buf, 0xCu);
  }

LABEL_14:

  v32 = *MEMORY[0x277D85DE8];

  return v3;
}

- (PSUIPlanPendingTransferMenusGroup)initWithListController:(id)a3 groupSpecifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer called" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)removePlanPendingTransfer:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [(PSUIPlanPendingTransferMenusGroup *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[PSUIPlanPendingTransferMenusGroup removePlanPendingTransfer:]";
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  cellularPlanManager = self->_cellularPlanManager;
  planPendingTransfer = self->_planPendingTransfer;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__PSUIPlanPendingTransferMenusGroup_removePlanPendingTransfer___block_invoke;
  v8[3] = &unk_279BA9DF0;
  v8[4] = self;
  [(CTCellularPlanManager *)cellularPlanManager deletePlanPendingTransfer:planPendingTransfer completion:v8];
  v7 = *MEMORY[0x277D85DE8];
}

void __63__PSUIPlanPendingTransferMenusGroup_removePlanPendingTransfer___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(*(a1 + 32) + 16);
      *buf = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&dword_2658DE000, v4, OS_LOG_TYPE_ERROR, "Failed to remove the plan pending transfer item: %@ with error: %@", buf, 0x16u);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__PSUIPlanPendingTransferMenusGroup_removePlanPendingTransfer___block_invoke_2;
    block[3] = &unk_279BA9D58;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __63__PSUIPlanPendingTransferMenusGroup_removePlanPendingTransfer___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) listController];
  v1 = [v3 navigationController];
  v2 = [v1 popViewControllerAnimated:1];
}

- (id)planPendingTransferLabel:(id)a3
{
  v3 = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer planLabel];
  v4 = [v3 label];

  return v4;
}

- (id)planPendingTransferNumber:(id)a3
{
  v3 = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer phoneNumber];
  v4 = [SettingsCellularUtils formattedPhoneNumber:v3];

  return v4;
}

- (id)planActivationInfo
{
  p_isa = &self->super.isa;
  v3 = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer status];
  if (v3 - 2 < 2)
  {
    v9 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v7 localizedStringForKey:@"PLAN_PENDING_TRANSFER_CONSENT_%@" value:&stru_287733598 table:@"Gemini-Gemini"];
    v11 = [p_isa[2] deviceName];
    p_isa = [v9 stringWithFormat:v10, v11];

LABEL_8:
    goto LABEL_9;
  }

  if (v3 <= 1)
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v8 = @"PLAN_PENDING_TRANSFER_ACTIVATION_PAD";
    }

    else
    {
      v8 = @"PLAN_PENDING_TRANSFER_ACTIVATION";
    }

    p_isa = [v6 localizedStringForKey:v8 value:&stru_287733598 table:@"Gemini-Gemini"];
    goto LABEL_8;
  }

LABEL_9:

  return p_isa;
}

- (id)activatePlanSpecifier
{
  v4 = [(CTCellularPlanPendingTransfer *)self->_planPendingTransfer status];
  if (v4 >= 3)
  {
    if (v4 == 3)
    {
      v2 = [(PSUIPlanPendingTransferMenusGroup *)self cancelConsentRequestSpecifier];
    }
  }

  else
  {
    v5 = [PSUIPlanPendingTransferActivationButtonSpecifier alloc];
    WeakRetained = objc_loadWeakRetained(&self->_listController);
    v2 = [(PSUIPlanPendingTransferActivationButtonSpecifier *)v5 initWithListController:WeakRetained planPendingTransfer:self->_planPendingTransfer];
  }

  return v2;
}

- (id)cancelConsentRequestSpecifier
{
  v3 = [(PSUIPlanPendingTransferMenusGroup *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "Consent request has been sent for plan pending transfer", buf, 2u);
  }

  v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"REQUEST_SENT" target:self set:0 get:0 detail:0 cell:4 edit:0];
  v5 = [PSUICellularPlanUniversalReference referenceFromCellularPlanPendingTransfer:self->_planPendingTransfer];
  [v4 setProperty:v5 forKey:*MEMORY[0x277D3FE70]];

  [v4 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];

  return v4;
}

- (void)addSpecifierForHeaderString:(id)a3
{
  v9 = a3;
  if ([(CTCellularPlanPendingTransfer *)self->_planPendingTransfer status]!= 2)
  {
    v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"PLAN_PENDING_TRANSFER_MENUS"];
    objc_storeWeak(&self->_groupSpecifier, v4);

    v5 = [(PSUIPlanPendingTransferMenusGroup *)self planActivationInfo];
    WeakRetained = objc_loadWeakRetained(&self->_groupSpecifier);
    [WeakRetained setProperty:v5 forKey:*MEMORY[0x277D3FF88]];

    v7 = objc_loadWeakRetained(&self->_groupSpecifier);
    [v7 setProperty:&unk_287748F30 forKey:*MEMORY[0x277D3FF40]];

    v8 = objc_loadWeakRetained(&self->_groupSpecifier);
    [v9 addObject:v8];
  }
}

- (PSSpecifier)groupSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_groupSpecifier);

  return WeakRetained;
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

@end
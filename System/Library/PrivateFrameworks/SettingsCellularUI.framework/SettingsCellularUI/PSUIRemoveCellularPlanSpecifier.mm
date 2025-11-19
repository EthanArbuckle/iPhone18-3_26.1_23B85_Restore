@interface PSUIRemoveCellularPlanSpecifier
+ (void)remap:(id)a3 to:(id)a4;
+ (void)showRemapFor:(id)a3 withList:(id)a4 navigationController:(id)a5;
- (PSListController)hostController;
- (PSUIRemoveCellularPlanSpecifier)initWithPlanUniversalReference:(id)a3 cellularPlanManager:(id)a4 planManagerCache:(id)a5 hostController:(id)a6 popViewControllerOnPlanDeletion:(BOOL)a7;
- (id)_remainingActivePlans;
- (void)removeCellularPlan:(id)a3;
- (void)removeCellularPlanConfirmed:(id)a3;
@end

@implementation PSUIRemoveCellularPlanSpecifier

- (PSUIRemoveCellularPlanSpecifier)initWithPlanUniversalReference:(id)a3 cellularPlanManager:(id)a4 planManagerCache:(id)a5 hostController:(id)a6 popViewControllerOnPlanDeletion:(BOOL)a7
{
  v13 = a3;
  v38 = a4;
  v37 = a5;
  v14 = a6;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = v16;
  if (isKindOfClass)
  {
    v18 = @"DELETE";
    v19 = @"Cellular";
  }

  else
  {
    v18 = @"DELETE_ESIM";
    v19 = @"Gemini-Gemini";
  }

  v20 = [v16 localizedStringForKey:v18 value:&stru_287733598 table:v19];

  v39.receiver = self;
  v39.super_class = PSUIRemoveCellularPlanSpecifier;
  v21 = [(PSUIRemoveCellularPlanSpecifier *)&v39 initWithName:v20 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v22 = v21;
  if (v21)
  {
    v36 = v13;
    objc_storeStrong(&v21->_planReference, a3);
    objc_storeStrong(&v22->_cellularPlanManager, a4);
    objc_storeStrong(&v22->_planManagerCache, a5);
    objc_storeWeak(&v22->_hostController, v14);
    v22->_popViewControllerOnPlanDeletion = a7;
    [(PSUIRemoveCellularPlanSpecifier *)v22 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [(PSUIRemoveCellularPlanSpecifier *)v22 setIdentifier:@"REMOVE_PLAN_BUTTON_ID"];
    v23 = [(PSUICellularPlanManagerCache *)v22->_planManagerCache planFromReference:v22->_planReference];
    v24 = [v23 plan];
    v25 = [v24 carrierName];

    v26 = [v23 phoneNumber];
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"DELETE_ESIM" value:&stru_287733598 table:@"Gemini-Gemini"];
    [(PSConfirmationSpecifier *)v22 setTitle:v28];

    [(PSUIRemoveCellularPlanSpecifier *)v22 setIdentifier:@"CELLULAR_SETTINGS_DELETE_ESIM"];
    if ([v25 length] && objc_msgSend(v26, "length"))
    {
      v29 = MEMORY[0x277CCACA8];
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v31 = [v30 localizedStringForKey:@"DELETE_ESIM_MESSAGE_CARRIER_%@_%@" value:&stru_287733598 table:@"Gemini-Gemini"];
      v32 = [v29 stringWithFormat:v31, v26, v25];
      [(PSConfirmationSpecifier *)v22 setPrompt:v32];
    }

    else
    {
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v31 = [v30 localizedStringForKey:@"DELETE_ESIM_MESSAGE" value:&stru_287733598 table:@"Gemini-Gemini"];
      [(PSConfirmationSpecifier *)v22 setPrompt:v31];
    }

    v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v34 = [v33 localizedStringForKey:@"CANCEL" value:&stru_287733598 table:@"Gemini-Gemini"];
    [(PSConfirmationSpecifier *)v22 setCancelButton:v34];

    [(PSUIRemoveCellularPlanSpecifier *)v22 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FE80]];
    [(PSUIRemoveCellularPlanSpecifier *)v22 setConfirmationAction:sel_removeCellularPlan_];

    v13 = v36;
  }

  return v22;
}

- (void)removeCellularPlan:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [(PSUIRemoveCellularPlanSpecifier *)self getLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[PSUIRemoveCellularPlanSpecifier removeCellularPlan:]";
    _os_log_impl(&dword_2658DE000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v5 = [MEMORY[0x277D3F9C8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:13 edit:0];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"DELETE_ESIM" value:&stru_287733598 table:@"Gemini-Gemini"];
  [v5 setTitle:v7];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"DELETE_ESIM_CONFIRMATION" value:&stru_287733598 table:@"Gemini-Gemini"];
  [v5 setPrompt:v9];

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"CANCEL" value:&stru_287733598 table:@"Gemini-Gemini"];
  [v5 setCancelButton:v11];

  [v5 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FE80]];
  [v5 setConfirmationAction:sel_removeCellularPlanConfirmed_];
  WeakRetained = objc_loadWeakRetained(&self->_hostController);
  [WeakRetained showConfirmationViewForSpecifier:v5];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeCellularPlanConfirmed:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSUIRemoveCellularPlanSpecifier *)self getLogger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[PSUIRemoveCellularPlanSpecifier removeCellularPlanConfirmed:]";
    _os_log_impl(&dword_2658DE000, v5, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = [(PSUICellularPlanManagerCache *)self->_planManagerCache planFromReference:self->_planReference];
  objc_initWeak(&location, self);
  v6 = [(PSUIRemoveCellularPlanSpecifier *)self hostController];
  v7 = [v6 navigationController];

  v8 = [(PSUIRemoveCellularPlanSpecifier *)self _remainingActivePlans];
  cellularPlanManager = self->_cellularPlanManager;
  v10 = *(*(&buf + 1) + 40);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__PSUIRemoveCellularPlanSpecifier_removeCellularPlanConfirmed___block_invoke;
  v16[3] = &unk_279BAA8A8;
  v16[4] = self;
  p_buf = &buf;
  objc_copyWeak(&v20, &location);
  v11 = v8;
  v17 = v11;
  v12 = v7;
  v18 = v12;
  [(CTCellularPlanManager *)cellularPlanManager didDeletePlanItem:v10 completion:v16];
  if ([(PSUIRemoveCellularPlanSpecifier *)self popViewControllerOnPlanDeletion])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__PSUIRemoveCellularPlanSpecifier_removeCellularPlanConfirmed___block_invoke_2;
    block[3] = &unk_279BA9D58;
    v15 = v12;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);

  v13 = *MEMORY[0x277D85DE8];
}

void __63__PSUIRemoveCellularPlanSpecifier_removeCellularPlanConfirmed___block_invoke(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v7 = [WeakRetained popViewControllerOnPlanDeletion];

    if ((v7 & 1) == 0)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__PSUIRemoveCellularPlanSpecifier_removeCellularPlanConfirmed___block_invoke_40;
      block[3] = &unk_279BA9EA0;
      objc_copyWeak(&v12, (a1 + 64));
      dispatch_async(MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v12);
    }

    if ([*(a1 + 40) count])
    {
      [PSUIRemoveCellularPlanSpecifier showRemapFor:*(*(*(a1 + 56) + 8) + 40) withList:*(a1 + 40) navigationController:*(a1 + 48)];
    }
  }

  else
  {
    v8 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "Failed to remove plan item %@. Error: %@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __63__PSUIRemoveCellularPlanSpecifier_removeCellularPlanConfirmed___block_invoke_40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained hostController];
  [v1 reloadSpecifiers];
}

- (id)_remainingActivePlans
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(PSUICellularPlanManagerCache *)self->_planManagerCache planFromReference:self->_planReference];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(PSUICellularPlanManagerCache *)self->_planManagerCache planItems];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 isSelected])
        {
          v11 = [v3 iccid];
          v12 = [v10 iccid];
          v13 = [v11 isEqualToString:v12];

          if ((v13 & 1) == 0)
          {
            [v4 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (void)showRemapFor:(id)a3 withList:(id)a4 navigationController:(id)a5
{
  v71 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v50 = a5;
  v9 = [MEMORY[0x277D4D830] loggerWithCategory:@"RemoveCellularPlanSpecifier"];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v68 = "+[PSUIRemoveCellularPlanSpecifier showRemapFor:withList:navigationController:]";
    v69 = 2048;
    v70 = [v8 count];
    _os_log_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEFAULT, "%s active plans is  %lu", buf, 0x16u);
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = 0x277CCA000uLL;
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"REMAP_DETAIL_MESSAGE" value:&stru_287733598 table:@"Cellular"];
  v14 = [v10 stringWithFormat:v13];

  v15 = MEMORY[0x277D75110];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"REMAP" value:&stru_287733598 table:@"Cellular"];
  v18 = [v15 alertControllerWithTitle:v17 message:v14 preferredStyle:1];

  v19 = 0x277D75000uLL;
  v49 = v14;
  if ([v8 count] == 1)
  {
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"REMAP_TO_SINGLE_SIM" value:&stru_287733598 table:@"Cellular"];

    v22 = MEMORY[0x277D750F8];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __78__PSUIRemoveCellularPlanSpecifier_showRemapFor_withList_navigationController___block_invoke;
    v63[3] = &unk_279BAA160;
    v64 = v7;
    v65 = v8;
    v23 = [v22 actionWithTitle:v21 style:0 handler:v63];
    [v18 addAction:v23];

    v24 = v50;
    v25 = v8;
    v26 = &unk_265974000;
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v21 = v8;
    v27 = [v21 countByEnumeratingWithState:&v59 objects:v66 count:16];
    v24 = v50;
    if (v27)
    {
      v28 = v27;
      v48 = v8;
      v52 = *v60;
      obj = v21;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          v30 = v18;
          v31 = v7;
          if (*v60 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v59 + 1) + 8 * i);
          v33 = MEMORY[0x277CCACA8];
          v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v35 = [v34 localizedStringForKey:@"REMAP_TO_SIM_%@" value:&stru_287733598 table:@"Cellular"];
          v36 = [v32 userLabel];
          v37 = [v36 label];
          v38 = [v33 stringWithFormat:v35, v37];

          v39 = MEMORY[0x277D750F8];
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __78__PSUIRemoveCellularPlanSpecifier_showRemapFor_withList_navigationController___block_invoke_2;
          v56[3] = &unk_279BAA160;
          v7 = v31;
          v57 = v31;
          v58 = v32;
          v40 = [v39 actionWithTitle:v38 style:0 handler:v56];
          v18 = v30;
          [v30 addAction:v40];
        }

        v28 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
      }

      while (v28);
      v25 = v48;
      v24 = v50;
      v21 = obj;
      v11 = 0x277CCA000;
      v26 = &unk_265974000;
      v19 = 0x277D75000;
    }

    else
    {
      v25 = v8;
      v26 = &unk_265974000;
    }
  }

  v41 = *(v19 + 248);
  v42 = [*(v11 + 2264) bundleForClass:objc_opt_class()];
  v43 = [v42 localizedStringForKey:@"CANCEL" value:&stru_287733598 table:@"Cellular"];
  v44 = [v41 actionWithTitle:v43 style:1 handler:&__block_literal_global_18];
  [v18 addAction:v44];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = v26[75];
  block[2] = __78__PSUIRemoveCellularPlanSpecifier_showRemapFor_withList_navigationController___block_invoke_4;
  block[3] = &unk_279BA9D30;
  v54 = v24;
  v55 = v18;
  v45 = v18;
  v46 = v24;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v47 = *MEMORY[0x277D85DE8];
}

void __78__PSUIRemoveCellularPlanSpecifier_showRemapFor_withList_navigationController___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) objectAtIndexedSubscript:0];
  [PSUIRemoveCellularPlanSpecifier remap:v1 to:v2];
}

+ (void)remap:(id)a3 to:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D4D830] loggerWithCategory:@"RemoveCellularPlanSpecifier"];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "+[PSUIRemoveCellularPlanSpecifier remap:to:]";
    _os_log_impl(&dword_2658DE000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8 = [MEMORY[0x277CF96D8] sharedManager];
  [v8 danglingPlanItemsShouldUpdate:0];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v23 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    v19 = v6;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 iccid];
        v16 = [v5 iccid];
        v17 = [v15 isEqualToString:v16];

        if (v17)
        {
          v6 = v19;
          [v8 remapSimLabel:v14 to:v19 completion:&__block_literal_global_67];
          goto LABEL_13;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v6 = v19;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
}

- (PSListController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

@end
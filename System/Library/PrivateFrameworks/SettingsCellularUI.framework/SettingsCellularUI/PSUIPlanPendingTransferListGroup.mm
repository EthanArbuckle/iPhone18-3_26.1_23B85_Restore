@interface PSUIPlanPendingTransferListGroup
- (BOOL)_isChinaRegionCellularDevice;
- (BOOL)_isInChina;
- (PSListController)listController;
- (PSUIPlanPendingTransferListGroup)initWithListController:(id)controller groupSpecifier:(id)specifier;
- (id)specifiers;
- (void)_showSpinner:(BOOL)spinner specifier:(id)specifier;
- (void)simSetupFlowCompleted:(unint64_t)completed;
- (void)transferablePlanPressed:(id)pressed;
@end

@implementation PSUIPlanPendingTransferListGroup

- (PSUIPlanPendingTransferListGroup)initWithListController:(id)controller groupSpecifier:(id)specifier
{
  controllerCopy = controller;
  specifierCopy = specifier;
  v11.receiver = self;
  v11.super_class = PSUIPlanPendingTransferListGroup;
  v8 = [(PSUIPlanPendingTransferListGroup *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_listController, controllerCopy);
    objc_storeStrong(&v9->_groupSpecifier, specifier);
  }

  return v9;
}

- (id)specifiers
{
  v43 = *MEMORY[0x277D85DE8];
  v32 = objc_opt_new();
  if (!_os_feature_enabled_impl())
  {
    v12 = +[PSUICellularPlanManagerCache sharedInstance];
    plansPendingTransfer = [v12 plansPendingTransfer];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = plansPendingTransfer;
    v14 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v14)
    {
      v15 = *v34;
      v30 = *MEMORY[0x277D3FE58];
      v16 = *MEMORY[0x277D3FE70];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v33 + 1) + 8 * i);
          v19 = MEMORY[0x277D3FAD8];
          carrierName = [v18 carrierName];
          currentDevice = [MEMORY[0x277D75418] currentDevice];
          userInterfaceIdiom = [currentDevice userInterfaceIdiom];

          if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            v23 = 0;
          }

          else
          {
            v23 = objc_opt_class();
          }

          v24 = [v19 preferenceSpecifierNamed:carrierName target:self set:0 get:0 detail:v23 cell:2 edit:0];

          status = [v18 status];
          if (status <= 3)
          {
            v26 = *off_279BAA7A8[status];
            [v24 setProperty:objc_opt_class() forKey:v30];
          }

          v27 = [PSUICellularPlanUniversalReference referenceFromCellularPlanPendingTransfer:v18];
          [v24 setProperty:v27 forKey:v16];

          [v32 addObject:v24];
        }

        v14 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v14);
    }

    v10 = obj;
    v8 = obj;
    goto LABEL_21;
  }

  if (![(PSUIPlanPendingTransferListGroup *)self _isChinaRegionCellularDevice])
  {
    goto LABEL_7;
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v3 = _MergedGlobals_72;
  v41 = _MergedGlobals_72;
  if (!_MergedGlobals_72)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __getCLLocationManagerClass_block_invoke_2;
    v37[3] = &unk_279BA9F68;
    v37[4] = &v38;
    __getCLLocationManagerClass_block_invoke_2(v37);
    v3 = v39[3];
  }

  v4 = v3;
  _Block_object_dispose(&v38, 8);
  if ([v3 locationServicesEnabled])
  {
    if (![(PSUIPlanPendingTransferListGroup *)self _isInChina])
    {
LABEL_7:
      v5 = MEMORY[0x277D3FAD8];
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v6 localizedStringForKey:@"TRANSFER_PLAN" value:&stru_287733598 table:@"Cellular"];
      v8 = [v5 preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v8 setButtonAction:sel_transferablePlanPressed_];
      [v32 addObject:v8];
      groupSpecifier = self->_groupSpecifier;
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"TRANSFER_PLAN_FOOTER" value:&stru_287733598 table:@"Cellular"];
      [(PSSpecifier *)groupSpecifier setProperty:v11 forKey:*MEMORY[0x277D3FF88]];

LABEL_21:
    }
  }

  v28 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__PSUIPlanPendingTransferListGroup_simSetupFlowCompleted___block_invoke;
  v3[3] = &unk_279BA9EA0;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __58__PSUIPlanPendingTransferListGroup_simSetupFlowCompleted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[1];
    WeakRetained[1] = 0;
    v4 = WeakRetained;

    v3 = objc_loadWeakRetained(v4 + 5);
    [v3 dismissViewControllerAnimated:1 completion:0];

    WeakRetained = v4;
  }
}

- (void)transferablePlanPressed:(id)pressed
{
  v19[1] = *MEMORY[0x277D85DE8];
  pressedCopy = pressed;
  [pressedCopy setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  [(PSUIPlanPendingTransferListGroup *)self _showSpinner:1 specifier:pressedCopy];
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  view = [WeakRetained view];
  [view setUserInteractionEnabled:0];

  v18 = *MEMORY[0x277D49548];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:3];
  v19[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  v9 = [MEMORY[0x277D49530] flowWithOptions:v8];
  flow = self->_flow;
  self->_flow = v9;

  [(TSSIMSetupFlow *)self->_flow setDelegate:self];
  objc_initWeak(&location, self);
  v11 = self->_flow;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__PSUIPlanPendingTransferListGroup_transferablePlanPressed___block_invoke;
  v14[3] = &unk_279BAA770;
  objc_copyWeak(&v16, &location);
  v14[4] = self;
  v12 = pressedCopy;
  v15 = v12;
  [(TSSIMSetupFlow *)v11 firstViewController:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  v13 = *MEMORY[0x277D85DE8];
}

void __60__PSUIPlanPendingTransferListGroup_transferablePlanPressed___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 5);
    v7 = [v6 isInModalPresentation];

    if (v7)
    {
      v8 = objc_loadWeakRetained(v5 + 5);
      [v8 showController:v3 animate:1];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v3];
      [v8 setModalPresentationStyle:2];
      v10 = objc_loadWeakRetained(v5 + 5);
      [v10 presentViewController:v8 animated:1 completion:0];
    }

    v11 = objc_loadWeakRetained(v5 + 5);
    v12 = [v11 view];
    [v12 setUserInteractionEnabled:1];

    [a1[5] setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
    [a1[4] _showSpinner:0 specifier:a1[5]];
  }

  else
  {
    v9 = [a1[4] getLogger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_2658DE000, v9, OS_LOG_TYPE_DEFAULT, "Invalid specifier", v13, 2u);
    }
  }
}

- (void)_showSpinner:(BOOL)spinner specifier:(id)specifier
{
  spinnerCopy = spinner;
  specifierCopy = specifier;
  if (!self->_spinner)
  {
    v8 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = self->_spinner;
    self->_spinner = v8;

    v10 = [specifierCopy propertyForKey:*MEMORY[0x277D40148]];
    accessoryView = [v10 accessoryView];
    originAccessoryView = self->_originAccessoryView;
    self->_originAccessoryView = accessoryView;

    if (spinnerCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [(UIActivityIndicatorView *)self->_spinner stopAnimating];
    v13 = [specifierCopy propertyForKey:*MEMORY[0x277D40148]];
    [v13 setAccessoryView:self->_originAccessoryView];

    goto LABEL_6;
  }

  if (!spinnerCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = [specifierCopy propertyForKey:*MEMORY[0x277D40148]];
  [v7 setAccessoryView:self->_spinner];

  [(UIActivityIndicatorView *)self->_spinner startAnimating];
LABEL_6:
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__PSUIPlanPendingTransferListGroup__showSpinner_specifier___block_invoke;
  v15[3] = &unk_279BA9D30;
  v15[4] = self;
  v16 = specifierCopy;
  v14 = specifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

void __59__PSUIPlanPendingTransferListGroup__showSpinner_specifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained reloadSpecifier:*(a1 + 40)];
}

- (BOOL)_isChinaRegionCellularDevice
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice sf_isChinaRegionCellularDevice])
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    sf_isiPad = [currentDevice2 sf_isiPad];
  }

  else
  {
    sf_isiPad = 0;
  }

  return sf_isiPad;
}

- (BOOL)_isInChina
{
  v2 = +[PSUICellularPlanManagerCache sharedInstance];
  isCarrierItemFlowSupported = [v2 isCarrierItemFlowSupported];

  return isCarrierItemFlowSupported ^ 1;
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

@end
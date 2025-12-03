@interface PSUICellularPlanConvertedController
- (PSSpecifier)weakReactivateSpecifier;
- (PSSpecifier)weakStatusSpecifier;
- (id)_labelSpecifier;
- (id)_phoneNumber:(id)number;
- (id)_phoneNumberSpecifier;
- (id)_planLabel:(id)label;
- (id)_reactivateSIMSpecifier;
- (id)_removeSIMSpecifier;
- (id)_simTypeSpecifier;
- (id)_statusSpecifier;
- (id)_turnOnThisLineSpecifier;
- (id)specifiers;
- (void)_cellularPlanChanged:(id)changed;
- (void)_maybeAddRemoveCellularPlanSpecifier:(id)specifier;
- (void)_updatePlanStatus:(id)status;
- (void)_updateReactivateSpecifier:(id)specifier;
- (void)_updateStatusSpecifier:(id)specifier;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation PSUICellularPlanConvertedController

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUICellularPlanConvertedController *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEBUG, "dealloc : %@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = PSUICellularPlanConvertedController;
  [(PSUICellularPlanConvertedController *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = PSUICellularPlanConvertedController;
  [(PSUICellularPlanConvertedController *)&v10 viewDidLoad];
  specifier = [(PSUICellularPlanConvertedController *)self specifier];
  v4 = [specifier propertyForKey:*MEMORY[0x277D3FE70]];
  planReference = self->_planReference;
  self->_planReference = v4;

  v6 = +[PSUICellularPlanManagerCache sharedInstance];
  v7 = [v6 planFromReferenceSafe:self->_planReference];
  planItem = self->_planItem;
  self->_planItem = v7;

  [(PSUICellularPlanConvertedController *)self _updatePlanStatus:self->_planItem];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__cellularPlanChanged_ name:@"PSUICellularPlanChanged" object:0];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    getLogger = [(PSUICellularPlanConvertedController *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "(re)loading specifiers", buf, 2u);
    }

    v6 = objc_opt_new();
    if (!self->_planReference)
    {
      specifier = [(PSUICellularPlanConvertedController *)self specifier];
      v8 = [specifier propertyForKey:*MEMORY[0x277D3FE70]];
      planReference = self->_planReference;
      self->_planReference = v8;

      v10 = +[PSUICellularPlanManagerCache sharedInstance];
      v11 = [v10 planFromReferenceSafe:self->_planReference];
      planItem = self->_planItem;
      self->_planItem = v11;
    }

    _removeSIMSpecifier = [(PSUICellularPlanConvertedController *)self _removeSIMSpecifier];
    [v6 addSpecifier:_removeSIMSpecifier];

    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v6 addSpecifier:emptyGroupSpecifier];

    if (self->_planItem)
    {
      _simTypeSpecifier = [(PSUICellularPlanConvertedController *)self _simTypeSpecifier];
      [v6 addSpecifier:_simTypeSpecifier];

      _statusSpecifier = [(PSUICellularPlanConvertedController *)self _statusSpecifier];
      [v6 addSpecifier:_statusSpecifier];

      _labelSpecifier = [(PSUICellularPlanConvertedController *)self _labelSpecifier];
      [v6 addSpecifier:_labelSpecifier];

      _phoneNumberSpecifier = [(PSUICellularPlanConvertedController *)self _phoneNumberSpecifier];
      [v6 addSpecifier:_phoneNumberSpecifier];

      if ([(CTCellularPlanItem *)self->_planItem transferredStatus]== 4)
      {
        [(PSUICellularPlanConvertedController *)self _turnOnThisLineSpecifier];
      }

      else
      {
        [(PSUICellularPlanConvertedController *)self _reactivateSIMSpecifier];
      }
      v20 = ;
      [v6 addSpecifier:v20];

      [(PSUICellularPlanConvertedController *)self _maybeAddRemoveCellularPlanSpecifier:v6];
    }

    else
    {
      getLogger2 = [(PSUICellularPlanConvertedController *)self getLogger];
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "No plan with the given plan reference", v23, 2u);
      }
    }

    [MEMORY[0x277D4D878] logSpecifiers:v6 origin:@"[PSUICellularPlanConvertedController specifiers] end"];
    v21 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v6;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)_planLabel:(id)label
{
  userLabel = [(CTCellularPlanItem *)self->_planItem userLabel];
  label = [userLabel label];

  return label;
}

- (id)_phoneNumber:(id)number
{
  phoneNumber = [(CTCellularPlanItem *)self->_planItem phoneNumber];
  v4 = [SettingsCellularUtils formattedPhoneNumber:phoneNumber];

  return v4;
}

- (id)_removeSIMSpecifier
{
  v2 = [[PSUIRemoveSIMWarningSpecifier alloc] initWithPlanUniversalReference:self->_planReference];

  return v2;
}

- (id)_simTypeSpecifier
{
  v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CARRIER_NAME"];
  type = [(CTCellularPlanItem *)self->_planItem type];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (type)
  {
    v7 = @"eSIM";
  }

  else
  {
    v7 = @"SIM";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_287733598 table:@"Cellular"];
  [v3 setName:v8];

  return v3;
}

- (id)_statusSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"STATUS" value:&stru_287733598 table:@"Cellular"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:0 get:sel__status_ detail:0 cell:4 edit:0];

  [v6 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  objc_storeWeak(&self->_weakStatusSpecifier, v6);

  return v6;
}

- (id)_labelSpecifier
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x277D3FAD8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"CELLULAR_PLAN_LABEL" value:&stru_287733598 table:@"Gemini-Gemini"];
    v5 = [v6 preferenceSpecifierNamed:v8 target:self set:0 get:sel__planLabel_ detail:0 cell:4 edit:0];

    [v5 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  return v5;
}

- (id)_phoneNumberSpecifier
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || (-[CTCellularPlanItem phoneNumber](self->_planItem, "phoneNumber"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, !v6))
  {
    v10 = 0;
  }

  else
  {
    v7 = MEMORY[0x277D3FAD8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"MY_NUMBER" value:&stru_287733598 table:@"Gemini-Gemini"];
    v10 = [v7 preferenceSpecifierNamed:v9 target:self set:0 get:sel__phoneNumber_ detail:0 cell:4 edit:0];

    [v10 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  return v10;
}

- (id)_turnOnThisLineSpecifier
{
  if ([(CTCellularPlanItem *)self->_planItem isSelectable])
  {
    v3 = [PSUITurnOnThisLineSpecifier alloc];
    planReference = self->_planReference;
    mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
    v6 = +[PSUICellularPlanManagerCache sharedInstance];
    v7 = +[PSUICoreTelephonyCallCache sharedInstance];
    v8 = [(PSUITurnOnThisLineSpecifier *)v3 initWithPlanUniversalReference:planReference cellularPlanManager:mEMORY[0x277CF96D8] planManagerCache:v6 callCache:v7 hostController:self isActivating:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_reactivateSIMSpecifier
{
  v3 = [[PSUIReactivateSIMSpecifier alloc] initWithPlanUniversalReference:self->_planReference hostController:self];
  objc_storeWeak(&self->_weakReactivateSpecifier, v3);

  return v3;
}

- (void)_maybeAddRemoveCellularPlanSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if ([(CTCellularPlanItem *)self->_planItem type]== 2)
  {
    v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"BOTTOM_SPACER_GROUP"];
    [specifierCopy addObject:v4];

    v5 = [PSUIRemoveCellularPlanSpecifier alloc];
    planReference = self->_planReference;
    mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
    v8 = +[PSUICellularPlanManagerCache sharedInstance];
    v9 = [(PSUIRemoveCellularPlanSpecifier *)v5 initWithPlanUniversalReference:planReference cellularPlanManager:mEMORY[0x277CF96D8] planManagerCache:v8 hostController:self popViewControllerOnPlanDeletion:1];

    [specifierCopy addObject:v9];
  }
}

- (void)_cellularPlanChanged:(id)changed
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = +[PSUICellularPlanManagerCache sharedInstance];
  planItems = [v4 planItems];

  v6 = [planItems countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(planItems);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        iccid = [v10 iccid];
        iccid2 = [(CTCellularPlanItem *)self->_planItem iccid];
        v13 = [iccid isEqualToString:iccid2];

        if (v13)
        {
          objc_storeStrong(&self->_planItem, v10);
          [(PSUICellularPlanConvertedController *)self _updatePlanStatus:v10];
          goto LABEL_11;
        }
      }

      v7 = [planItems countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updatePlanStatus:(id)status
{
  statusCopy = status;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__PSUICellularPlanConvertedController__updatePlanStatus___block_invoke;
  v6[3] = &unk_279BA9D30;
  v7 = statusCopy;
  selfCopy = self;
  v5 = statusCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __57__PSUICellularPlanConvertedController__updatePlanStatus___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transferredStatus];
  v3 = *(a1 + 40);
  if (v2)
  {
    [v3 _updateStatusSpecifier:*(a1 + 32)];
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v4 _updateReactivateSpecifier:v5];
  }

  else
  {
    v6 = [v3 navigationController];
    v7 = [v6 visibleViewController];
    v8 = *(a1 + 40);

    if (v7 == v8)
    {
      v10 = [*(a1 + 40) navigationController];
      v9 = [v10 popViewControllerAnimated:1];
    }
  }
}

- (void)_updateStatusSpecifier:(id)specifier
{
  isCheckingCellularConnectivity = [specifier isCheckingCellularConnectivity];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (isCheckingCellularConnectivity)
  {
    v7 = @"CHECKING";
    v8 = @"Gemini-Gemini";
  }

  else
  {
    v7 = @"INACTIVE";
    v8 = @"Cellular";
  }

  v9 = [v5 localizedStringForKey:v7 value:&stru_287733598 table:v8];
  planStatus = self->_planStatus;
  self->_planStatus = v9;

  WeakRetained = objc_loadWeakRetained(&self->_weakStatusSpecifier);
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = [WeakRetained propertyForKey:*MEMORY[0x277D40148]];
    [v13 setValue:self->_planStatus];
  }

  else
  {
    getLogger = [(PSUICellularPlanConvertedController *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "invalid status specifier", v15, 2u);
    }
  }
}

- (void)_updateReactivateSpecifier:(id)specifier
{
  specifierCopy = specifier;
  WeakRetained = objc_loadWeakRetained(&self->_weakReactivateSpecifier);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    getLogger = [WeakRetained propertyForKey:*MEMORY[0x277D40148]];
    isCheckingCellularConnectivity = [specifierCopy isCheckingCellularConnectivity];
    if (isCheckingCellularConnectivity)
    {
      v9 = MEMORY[0x277CBEC28];
    }

    else
    {
      v9 = MEMORY[0x277CBEC38];
    }

    [v6 setProperty:v9 forKey:*MEMORY[0x277D3FF38]];
    titleLabel = [getLogger titleLabel];
    [titleLabel setEnabled:isCheckingCellularConnectivity ^ 1u];
  }

  else
  {
    getLogger = [(PSUICellularPlanConvertedController *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "invalid status specifier", v11, 2u);
    }
  }
}

- (PSSpecifier)weakStatusSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_weakStatusSpecifier);

  return WeakRetained;
}

- (PSSpecifier)weakReactivateSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_weakReactivateSpecifier);

  return WeakRetained;
}

@end
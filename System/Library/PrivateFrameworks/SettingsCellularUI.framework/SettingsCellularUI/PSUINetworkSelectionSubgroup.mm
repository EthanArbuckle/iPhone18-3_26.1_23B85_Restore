@interface PSUINetworkSelectionSubgroup
- (PSListController)listController;
- (PSSpecifier)parentSpecifier;
- (PSUINetworkSelectionSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier;
- (PSUINetworkSelectionSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier parentSpecifier:(id)parentSpecifier;
- (id)localizedCellularNetworkName:(id)name;
- (id)specifiers;
- (void)networkSelected:(id)selected success:(BOOL)success mode:(id)mode;
- (void)operatorNameChanged:(id)changed name:(id)name;
- (void)reloadCellularNetworkSpecifier;
@end

@implementation PSUINetworkSelectionSubgroup

- (PSUINetworkSelectionSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier parentSpecifier:(id)parentSpecifier
{
  controllerCopy = controller;
  parentSpecifierCopy = parentSpecifier;
  v16.receiver = self;
  v16.super_class = PSUINetworkSelectionSubgroup;
  v9 = [(PSUINetworkSelectionSubgroup *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_listController, controllerCopy);
    objc_storeWeak(&v10->_parentSpecifier, parentSpecifierCopy);
    v11 = objc_alloc(MEMORY[0x277CC37B0]);
    v12 = [v11 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v10->_ctClient;
    v10->_ctClient = v12;

    [(CoreTelephonyClient *)v10->_ctClient setDelegate:v10];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
  }

  return v10;
}

- (PSUINetworkSelectionSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier
{
  controllerCopy = controller;
  specifierCopy = specifier;
  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer called" reason:@"Unsupported initializer called" userInfo:0]);
}

- (id)specifiers
{
  v24[1] = *MEMORY[0x277D85DE8];
  v18 = objc_opt_new();
  v3 = objc_opt_new();
  bundleControllers = self->_bundleControllers;
  self->_bundleControllers = v3;

  v23 = *MEMORY[0x277D3FE08];
  v24[0] = @"CellularNetworkTelephonySettings";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v20 = v5;
  v21 = @"items";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v22 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  WeakRetained = objc_loadWeakRetained(&self->_parentSpecifier);
  v9 = objc_loadWeakRetained(&self->_listController);
  bundle = [v9 bundle];
  v11 = objc_loadWeakRetained(&self->_listController);
  v19 = 0;
  v12 = SpecifiersFromPlist();

  v13 = v19;
  firstObject = [v12 firstObject];
  v15 = firstObject;
  if (firstObject)
  {
    [firstObject setTarget:self];
    *&v15[*MEMORY[0x277D3FCA8]] = sel_localizedCellularNetworkName_;
  }

  [v18 addObjectsFromArray:v12];
  [(NSMutableArray *)self->_bundleControllers addObjectsFromArray:v13];

  v16 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)localizedCellularNetworkName:(id)name
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_parentSpecifier);
  v5 = [WeakRetained propertyForKey:*MEMORY[0x277D40128]];

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = +[PSUICoreTelephonyRegistrationCache sharedInstance];
  v7 = [v6 localizedOperatorName:v5];

  getLogger = [(PSUINetworkSelectionSubgroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Localized cellular network name: %{public}@", &v11, 0xCu);
  }

  if (!v7)
  {
LABEL_5:
    v7 = &stru_287733598;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)reloadCellularNetworkSpecifier
{
  getLogger = [(PSUINetworkSelectionSubgroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Reloading telephony settings", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_listController);
  v5 = [WeakRetained specifierForID:@"CELLULAR_NETWORK_TELEPHONY_SETTINGS"];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_listController);
    [v6 reloadSpecifier:v5 animated:1];
  }
}

- (void)networkSelected:(id)selected success:(BOOL)success mode:(id)mode
{
  v18 = *MEMORY[0x277D85DE8];
  selectedCopy = selected;
  modeCopy = mode;
  slotID = [selectedCopy slotID];
  WeakRetained = objc_loadWeakRetained(&self->_parentSpecifier);
  v11 = [WeakRetained propertyForKey:*MEMORY[0x277D40128]];
  slotID2 = [v11 slotID];

  getLogger = [(PSUINetworkSelectionSubgroup *)self getLogger];
  v14 = os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT);
  if (slotID == slotID2)
  {
    if (v14)
    {
      v16 = 138543362;
      v17 = modeCopy;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Network selected changed to %{public}@", &v16, 0xCu);
    }

    [(PSUINetworkSelectionSubgroup *)self reloadCellularNetworkSpecifier];
  }

  else
  {
    if (v14)
    {
      v16 = 138412290;
      v17 = selectedCopy;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Ignoring network selected for %@", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)operatorNameChanged:(id)changed name:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  nameCopy = name;
  slotID = [changedCopy slotID];
  WeakRetained = objc_loadWeakRetained(&self->_parentSpecifier);
  v10 = [WeakRetained propertyForKey:*MEMORY[0x277D40128]];
  slotID2 = [v10 slotID];

  getLogger = [(PSUINetworkSelectionSubgroup *)self getLogger];
  v13 = os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT);
  if (slotID == slotID2)
  {
    if (v13)
    {
      v15 = 138543362;
      v16 = nameCopy;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Operator name changed to %{public}@", &v15, 0xCu);
    }

    [(PSUINetworkSelectionSubgroup *)self reloadCellularNetworkSpecifier];
  }

  else
  {
    if (v13)
    {
      v15 = 138412290;
      v16 = changedCopy;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Ignoring operator name change for %@", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

- (PSSpecifier)parentSpecifier
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSpecifier);

  return WeakRetained;
}

@end
@interface PSUIRoamingSpecifiersSubgroup
- (PSListController)listController;
- (PSUICoreTelephonyDataCache)dataCache;
- (PSUIRoamingSpecifiersSubgroup)initWithListController:(id)controller dataCache:(id)cache serviceDescriptor:(id)descriptor;
- (PSUIRoamingSpecifiersSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier;
- (id)getDataRoamingStatus:(id)status;
- (id)specifiers;
- (void)launchDataRoamingWarningFlow;
- (void)roamingOptionsDidChange;
- (void)setDataRoamingEnabled:(id)enabled specifier:(id)specifier;
- (void)simSetupFlowCompleted:(unint64_t)completed;
@end

@implementation PSUIRoamingSpecifiersSubgroup

- (PSUIRoamingSpecifiersSubgroup)initWithListController:(id)controller dataCache:(id)cache serviceDescriptor:(id)descriptor
{
  controllerCopy = controller;
  cacheCopy = cache;
  descriptorCopy = descriptor;
  v17.receiver = self;
  v17.super_class = PSUIRoamingSpecifiersSubgroup;
  v11 = [(PSUIRoamingSpecifiersSubgroup *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_listController, controllerCopy);
    objc_storeWeak(&v12->_dataCache, cacheCopy);
    objc_storeStrong(&v12->_serviceDescriptor, descriptor);
    v13 = objc_alloc(MEMORY[0x277CC37B0]);
    v14 = [v13 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v12->_ctClient;
    v12->_ctClient = v14;
  }

  return v12;
}

- (PSUIRoamingSpecifiersSubgroup)initWithListController:(id)controller groupSpecifier:(id)specifier
{
  controllerCopy = controller;
  specifierCopy = specifier;
  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer called" reason:@"Unsupported initializer called" userInfo:0]);
}

- (id)specifiers
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D3FAD8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DATA_ROAMING_TOGGLE" value:&stru_287733598 table:@"Cellular"];
  v6 = [v3 preferenceSpecifierNamed:v5 target:self set:sel_setDataRoamingEnabled_specifier_ get:sel_getDataRoamingStatus_ detail:0 cell:6 edit:0];

  [v6 setIdentifier:@"DATA_ROAMING"];
  v7 = MEMORY[0x277CCABB0];
  WeakRetained = objc_loadWeakRetained(&self->_dataCache);
  v9 = [v7 numberWithInt:{objc_msgSend(WeakRetained, "hideDataRoaming:", self->_serviceDescriptor) ^ 1}];
  [v6 setProperty:v9 forKey:*MEMORY[0x277D3FF38]];

  v13[0] = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)getDataRoamingStatus:(id)status
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_dataCache);
  v5 = [WeakRetained getInternationalDataAccessStatus:self->_serviceDescriptor];

  getLogger = [(PSUIRoamingSpecifiersSubgroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"disabled";
    serviceDescriptor = self->_serviceDescriptor;
    v13 = "[PSUIRoamingSpecifiersSubgroup getDataRoamingStatus:]";
    v12 = 136315650;
    if (v5)
    {
      v7 = @"enabled";
    }

    v14 = 2112;
    v15 = serviceDescriptor;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s For service %@, roaming is %@", &v12, 0x20u);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)setDataRoamingEnabled:(id)enabled specifier:(id)specifier
{
  v26 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  bOOLValue = [enabled BOOLValue];
  objc_storeStrong(&self->_roamingSpecifier, specifier);
  getLogger = [(PSUIRoamingSpecifiersSubgroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"disabled";
    serviceDescriptor = self->_serviceDescriptor;
    v21 = "[PSUIRoamingSpecifiersSubgroup setDataRoamingEnabled:specifier:]";
    *buf = 136315650;
    if (bOOLValue)
    {
      v10 = @"enabled";
    }

    v22 = 2112;
    v23 = serviceDescriptor;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "%s For service %@, setting roaming = %@", buf, 0x20u);
  }

  if (bOOLValue && _os_feature_enabled_impl())
  {
    ctClient = self->_ctClient;
    v19 = 0;
    v13 = [(CoreTelephonyClient *)ctClient shouldShowRoamingEducation:&v19];
    v14 = v19;
    if (v13)
    {
      if ([v13 BOOLValue])
      {
        [(PSUIRoamingSpecifiersSubgroup *)self launchDataRoamingWarningFlow];
LABEL_16:

        goto LABEL_17;
      }

      getLogger2 = [(PSUIRoamingSpecifiersSubgroup *)self getLogger];
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "Rate limited", buf, 2u);
      }
    }

    else
    {
      getLogger2 = [(PSUIRoamingSpecifiersSubgroup *)self getLogger];
      if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v14;
        _os_log_error_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_ERROR, "Error with checking setup eSIM: %@", buf, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_dataCache);
    [WeakRetained setInternationalDataAccessStatus:self->_serviceDescriptor status:1];

    [(PSUIRoamingSpecifiersSubgroup *)self roamingOptionsDidChange];
    goto LABEL_16;
  }

  v15 = objc_loadWeakRetained(&self->_dataCache);
  [v15 setInternationalDataAccessStatus:self->_serviceDescriptor status:bOOLValue];

  [(PSUIRoamingSpecifiersSubgroup *)self roamingOptionsDidChange];
LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)roamingOptionsDidChange
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __56__PSUIRoamingSpecifiersSubgroup_roamingOptionsDidChange__block_invoke;
  v2[3] = &unk_279BA9EA0;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __56__PSUIRoamingSpecifiersSubgroup_roamingOptionsDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v3 = [v4 listController];
    [v3 reloadSpecifiers];
  }
}

- (void)launchDataRoamingWarningFlow
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D49590];
  v12[0] = *MEMORY[0x277D49548];
  v12[1] = v3;
  v13[0] = &unk_287749158;
  v13[1] = &unk_287749258;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v5 = [MEMORY[0x277D49530] flowWithOptions:v4];
  flow = self->_flow;
  self->_flow = v5;

  [(TSSIMSetupFlow *)self->_flow setDelegate:self];
  objc_initWeak(&location, self);
  v7 = self->_flow;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__PSUIRoamingSpecifiersSubgroup_launchDataRoamingWarningFlow__block_invoke;
  v9[3] = &unk_279BA9EC8;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  [(TSSIMSetupFlow *)v7 firstViewController:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  v8 = *MEMORY[0x277D85DE8];
}

void __61__PSUIRoamingSpecifiersSubgroup_launchDataRoamingWarningFlow__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v3];
    [v5 setModalPresentationStyle:2];
    v6 = objc_loadWeakRetained(WeakRetained + 3);
    [v6 presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v5 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2658DE000, v5, OS_LOG_TYPE_ERROR, "Invalid self", v7, 2u);
    }
  }
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  v11 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUIRoamingSpecifiersSubgroup *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    completedCopy = completed;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Data roaming warning flow completed with type %lu", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__PSUIRoamingSpecifiersSubgroup_simSetupFlowCompleted___block_invoke;
  block[3] = &unk_279BA9FE0;
  objc_copyWeak(v8, buf);
  v8[1] = completed;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v8);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__PSUIRoamingSpecifiersSubgroup_simSetupFlowCompleted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 48) != 1;
    v7 = WeakRetained;
    v4 = objc_loadWeakRetained(WeakRetained + 4);
    [v4 setInternationalDataAccessStatus:*(*(a1 + 32) + 8) status:v3];

    [*(a1 + 32) roamingOptionsDidChange];
    v5 = v7[5];
    v7[5] = 0;

    v6 = objc_loadWeakRetained(v7 + 3);
    [v6 dismissViewControllerAnimated:1 completion:0];

    WeakRetained = v7;
  }
}

- (PSListController)listController
{
  WeakRetained = objc_loadWeakRetained(&self->_listController);

  return WeakRetained;
}

- (PSUICoreTelephonyDataCache)dataCache
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCache);

  return WeakRetained;
}

@end
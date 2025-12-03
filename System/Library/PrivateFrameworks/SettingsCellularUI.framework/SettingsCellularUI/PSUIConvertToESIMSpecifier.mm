@interface PSUIConvertToESIMSpecifier
+ (id)keyFor:(id)for;
- (PSUIConvertToESIMSpecifier)initWithPhoneNumber:(id)number carrierName:(id)name hostController:(id)controller isViewControllerPopNeeded:(BOOL)needed iccid:(id)iccid;
- (void)_convertToeSIM;
- (void)_showWifiAlert;
- (void)convertToeSIMCellPressed:(id)pressed;
- (void)dealloc;
- (void)odcCanceled:(id)canceled;
- (void)odcFailed:(id)failed;
- (void)odcSuccess:(id)success isViewControllerPopNeeded:(BOOL)needed;
- (void)simSetupFlowCompleted:(unint64_t)completed;
@end

@implementation PSUIConvertToESIMSpecifier

+ (id)keyFor:(id)for
{
  v3 = MEMORY[0x277CCACA8];
  forCopy = for;
  forCopy = [v3 stringWithFormat:@"%@:%@", objc_opt_class(), forCopy];

  return forCopy;
}

- (PSUIConvertToESIMSpecifier)initWithPhoneNumber:(id)number carrierName:(id)name hostController:(id)controller isViewControllerPopNeeded:(BOOL)needed iccid:(id)iccid
{
  v28 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  nameCopy = name;
  controllerCopy = controller;
  iccidCopy = iccid;
  if (_MergedGlobals_1_1 != -1)
  {
    dispatch_once(&_MergedGlobals_1_1, &__block_literal_global_7);
  }

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"Convert to eSIM" value:&stru_287733598 table:@"Gemini-Gemini"];
  v25.receiver = self;
  v25.super_class = PSUIConvertToESIMSpecifier;
  v18 = [(PSUIConvertToESIMSpecifier *)&v25 initWithName:v17 target:0 set:0 get:0 detail:0 cell:13 edit:0];

  if (v18)
  {
    [(PSUIConvertToESIMSpecifier *)v18 setIdentifier:@"Convert to eSIM"];
    [(PSUIConvertToESIMSpecifier *)v18 setTarget:v18];
    [(PSUIConvertToESIMSpecifier *)v18 setButtonAction:sel_convertToeSIMCellPressed_];
    objc_storeStrong(&v18->_phoneNumber, number);
    objc_storeStrong(&v18->_carrierName, name);
    objc_storeWeak(&v18->_hostController, controllerCopy);
    navigationController = [controllerCopy navigationController];
    objc_storeWeak(&v18->_navigationController, navigationController);

    v18->_isViewControllerPopNeeded = needed;
    objc_storeStrong(&v18->_iccid, iccid);
  }

  v20 = [qword_28156A5F0 objectForKey:iccidCopy];
  if (v20)
  {
    getLogger = [(PSUIConvertToESIMSpecifier *)v18 getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v18;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "update delegate to %@", buf, 0xCu);
    }

    [v20 setDelegate:v18];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t __109__PSUIConvertToESIMSpecifier_initWithPhoneNumber_carrierName_hostController_isViewControllerPopNeeded_iccid___block_invoke()
{
  qword_28156A5F0 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PSUIConvertToESIMSpecifier;
  [(PSUIConvertToESIMSpecifier *)&v4 dealloc];
}

- (void)convertToeSIMCellPressed:(id)pressed
{
  v4 = +[PSUIDeviceWiFiState sharedInstance];
  if ([v4 isConnectedOverWiFi])
  {

LABEL_4:

    [(PSUIConvertToESIMSpecifier *)self _convertToeSIM];
    return;
  }

  v5 = +[PSUIDeviceEthernetState sharedInstance];
  isConnectedOverEthernet = [v5 isConnectedOverEthernet];

  if (isConnectedOverEthernet)
  {
    goto LABEL_4;
  }

  [(PSUIConvertToESIMSpecifier *)self _showWifiAlert];
}

- (void)odcSuccess:(id)success isViewControllerPopNeeded:(BOOL)needed
{
  neededCopy = needed;
  successCopy = success;
  getLogger = [(PSUIConvertToESIMSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "ODC Success", v10, 2u);
  }

  [qword_28156A5F0 removeObjectForKey:successCopy];
  if (neededCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_navigationController);
    v9 = [WeakRetained popViewControllerAnimated:1];
  }
}

- (void)odcFailed:(id)failed
{
  failedCopy = failed;
  getLogger = [(PSUIConvertToESIMSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "ODC Failed", v6, 2u);
  }

  [qword_28156A5F0 removeObjectForKey:failedCopy];
}

- (void)odcCanceled:(id)canceled
{
  canceledCopy = canceled;
  getLogger = [(PSUIConvertToESIMSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "ODC canceled", v6, 2u);
  }

  [qword_28156A5F0 removeObjectForKey:canceledCopy];
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__PSUIConvertToESIMSpecifier_simSetupFlowCompleted___block_invoke;
  v5[3] = &unk_279BA9FE0;
  objc_copyWeak(v6, &location);
  v5[4] = self;
  v6[1] = completed;
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __52__PSUIConvertToESIMSpecifier_simSetupFlowCompleted___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 31);
    v5 = [v4 presentedViewController];
    [v5 dismissViewControllerAnimated:1 completion:0];

    v6 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v15 = 134217984;
      v16 = v7;
      _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "simSetupFlowCompleted with completionType:%ld", &v15, 0xCu);
    }

    if (*(v3 + 264) == 1 && *(a1 + 48) == 2)
    {
      v8 = objc_loadWeakRetained(v3 + 31);
      v9 = [v8 navigationController];
      v10 = [v9 popViewControllerAnimated:1];
    }

    v11 = v3[28];
    v3[28] = 0;

    v12 = [PSUIConvertToESIMSpecifier keyFor:v3[34]];
    v13 = +[SSFlowHostCache sharedInstance];
    [v13 removeObjectForKey:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_convertToeSIM
{
  v29[3] = *MEMORY[0x277D85DE8];
  getLogger = [(PSUIConvertToESIMSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "start convert physical SIM -> eSIM", buf, 2u);
  }

  if (!self->_carrierName)
  {
    getLogger2 = [(PSUIConvertToESIMSpecifier *)self getLogger];
    if (os_log_type_enabled(getLogger2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, getLogger2, OS_LOG_TYPE_DEFAULT, "carrier name empty", buf, 2u);
    }

    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"CARRIER" value:&stru_287733598 table:@"Cellular"];
    carrierName = self->_carrierName;
    self->_carrierName = v6;
  }

  v28[0] = *MEMORY[0x277D49548];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:9];
  v9 = *MEMORY[0x277D49538];
  v10 = self->_carrierName;
  v29[0] = v8;
  v29[1] = v10;
  v11 = *MEMORY[0x277D49570];
  phoneNumber = self->_phoneNumber;
  v28[1] = v9;
  v28[2] = v11;
  if (phoneNumber)
  {
    v13 = phoneNumber;
  }

  else
  {
    v13 = &stru_287733598;
  }

  v29[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];

  getLogger3 = [(PSUIConvertToESIMSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v14;
    _os_log_impl(&dword_2658DE000, getLogger3, OS_LOG_TYPE_DEFAULT, "launch SimSetupSupport with options:%@", buf, 0xCu);
  }

  v16 = [MEMORY[0x277D49530] flowWithOptions:v14];
  flow = self->_flow;
  self->_flow = v16;

  [(TSSIMSetupFlow *)self->_flow setDelegate:self];
  v18 = [qword_28156A5F0 objectForKey:self->_iccid];
  if (v18)
  {
    WeakRetained = [(PSUIConvertToESIMSpecifier *)self getLogger];
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2658DE000, WeakRetained, OS_LOG_TYPE_ERROR, "The model shouldn't already exist until after _convertToeSIM call", buf, 2u);
    }
  }

  else
  {
    v20 = [ConvertToESIMSpecifierCache alloc];
    WeakRetained = objc_loadWeakRetained(&self->_navigationController);
    v21 = [(ConvertToESIMSpecifierCache *)v20 initWithDelegate:WeakRetained isViewControllerPopNeeded:self->_isViewControllerPopNeeded odcFlow:self->_flow delegate:self iccid:self->_iccid];
    [qword_28156A5F0 setObject:v21 forKeyedSubscript:self->_iccid];
  }

  objc_initWeak(buf, self);
  v22 = self->_flow;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __44__PSUIConvertToESIMSpecifier__convertToeSIM__block_invoke;
  v24[3] = &unk_279BAA090;
  objc_copyWeak(&v25, buf);
  [(TSSIMSetupFlow *)v22 firstViewController:v24];
  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);

  v23 = *MEMORY[0x277D85DE8];
}

void __44__PSUIConvertToESIMSpecifier__convertToeSIM__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
    [v4 setModalPresentationStyle:2];
    v5 = objc_loadWeakRetained(WeakRetained + 31);
    [v5 presentViewController:v4 animated:1 completion:0];

    v6 = [PSUIConvertToESIMSpecifier keyFor:WeakRetained[34]];
    v7 = +[SSFlowHostCache sharedInstance];
    [v7 setObject:WeakRetained forKey:v6];
  }
}

- (void)_showWifiAlert
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isChinaRegionCellularDevice = [currentDevice sf_isChinaRegionCellularDevice];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (sf_isChinaRegionCellularDevice)
  {
    v7 = @"NOT_CONNECTED_TO_WLAN";
  }

  else
  {
    v7 = @"NOT_CONNECTED_TO_WIFI";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_287733598 table:@"Gemini-Gemini"];

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice2 sf_isChinaRegionCellularDevice])
  {
    v10 = @"TURN_ON_WLAN_FOR_CONVERT_TO_ESIM";
  }

  else
  {
    v10 = @"TURN_ON_WIFI_FOR_CONVERT_TO_ESIM";
  }

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:v10 value:&stru_287733598 table:@"Gemini-Gemini"];

  v13 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v12 preferredStyle:1];
  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice3 sf_isChinaRegionCellularDevice])
  {
    v15 = @"WLAN_SETTINGS";
  }

  else
  {
    v15 = @"WIFI_SETTINGS";
  }

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:v15 value:&stru_287733598 table:@"Gemini-Gemini"];

  v18 = [MEMORY[0x277D750F8] actionWithTitle:v17 style:0 handler:&__block_literal_global_60];
  [v13 addAction:v18];
  v19 = MEMORY[0x277D750F8];
  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"CANCEL" value:&stru_287733598 table:@"Gemini-Gemini"];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __44__PSUIConvertToESIMSpecifier__showWifiAlert__block_invoke_2;
  v24[3] = &unk_279BA9E70;
  v24[4] = self;
  v22 = [v19 actionWithTitle:v21 style:1 handler:v24];

  [v13 addAction:v22];
  WeakRetained = objc_loadWeakRetained(&self->_hostController);
  [WeakRetained presentViewController:v13 animated:1 completion:0];
}

void __44__PSUIConvertToESIMSpecifier__showWifiAlert__block_invoke()
{
  v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=WIFI"];
  [v1 openSensitiveURL:v0 withOptions:0];
}

void __44__PSUIConvertToESIMSpecifier__showWifiAlert__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) getLogger];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2658DE000, v1, OS_LOG_TYPE_DEFAULT, "user canceled on device psim to esim conversion", v2, 2u);
  }
}

@end
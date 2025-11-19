@interface SUSUIAuthenticationAlertAction
- (SUAutoInstallForecast)autoInstallForecast;
- (SUDescriptor)descriptor;
- (SURollbackDescriptor)rollbackDescriptor;
- (SUSUIAuthenticationAlertAction)initWithDescriptor:(id)a3 autoInstallForecast:(id)a4 forInstallTonight:(BOOL)a5 canDeferInstallation:(BOOL)a6 completionQueue:(id)a7 completionBlock:(id)a8;
- (SUSUIAuthenticationAlertAction)initWithInfo:(id)a3 forBaseAction:(id)a4;
- (SUSUIAuthenticationAlertAction)initWithRollbackDescriptor:(id)a3 canDeferInstallation:(BOOL)a4 completionQueue:(id)a5 completionBlock:(id)a6;
- (void)_loadIfNecessary;
- (void)fireCompletionIfNecessaryForResult:(BOOL)a3;
@end

@implementation SUSUIAuthenticationAlertAction

- (SUSUIAuthenticationAlertAction)initWithDescriptor:(id)a3 autoInstallForecast:(id)a4 forInstallTonight:(BOOL)a5 canDeferInstallation:(BOOL)a6 completionQueue:(id)a7 completionBlock:(id)a8
{
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = 0;
  objc_storeStrong(&v36, a4);
  v35 = a5;
  v34 = a6;
  v33 = 0;
  objc_storeStrong(&v33, a7);
  v32 = 0;
  objc_storeStrong(&v32, a8);
  v38->_alertType = 0;
  v31 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  if (location[0])
  {
    [v31 encodeObject:location[0] forKey:@"_susDescriptor"];
  }

  if (v36)
  {
    [v31 encodeObject:v36 forKey:@"_susAutoInstallForecast"];
  }

  [v31 encodeBool:v35 forKey:@"_susForInstallTonight"];
  [v31 encodeBool:v34 forKey:@"_susCanDeferInstallation"];
  [v31 encodeInteger:v38->_alertType forKey:@"_susAlertType"];
  v30 = [v31 encodedData];
  v29 = objc_alloc_init(MEMORY[0x277CF0C80]);
  [v29 setObject:v30 forSetting:SUSUIAuthenticationAlertActionInput];
  [v29 setObject:@"SUSUIAuthenticationAlertAction" forSetting:SUSUIAuthenticationAlertActionInputType];
  v13 = v38;
  v14 = v29;
  v27 = 0;
  if (v33)
  {
    v12 = v33;
  }

  else
  {
    v11 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
    v28 = v11;
    v27 = 1;
    v12 = v28;
  }

  v21 = MEMORY[0x277D85DD0];
  v22 = -1073741824;
  v23 = 0;
  v24 = __144__SUSUIAuthenticationAlertAction_initWithDescriptor_autoInstallForecast_forInstallTonight_canDeferInstallation_completionQueue_completionBlock___block_invoke;
  v25 = &unk_279CB3AE0;
  v26 = MEMORY[0x277D82BE0](v32);
  v38 = 0;
  v20.receiver = v13;
  v20.super_class = SUSUIAuthenticationAlertAction;
  v38 = [(SUSUIAuthenticationAlertAction *)&v20 initWithInfo:v14 timeout:v12 forResponseOnQueue:&v21 withHandler:0.0];
  objc_storeStrong(&v38, v38);
  if (v27)
  {
    MEMORY[0x277D82BD8](v28);
  }

  objc_storeStrong(&v38->_baseAction, 0);
  v38->_loaded = 1;
  v10 = MEMORY[0x277D82BE0](v38);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v38, 0);
  return v10;
}

void __144__SUSUIAuthenticationAlertAction_initWithDescriptor_autoInstallForecast_forInstallTonight_canDeferInstallation_completionQueue_completionBlock___block_invoke(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = a1;
  v4 = [location[0] info];
  [v4 flagForSetting:SUSUIAuthenticationAlertActionOutputSuccess];
  IsYes = BSSettingFlagIsYes();
  MEMORY[0x277D82BD8](v4);
  v7 = IsYes;
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v2 = @"YES";
    }

    else
    {
      v2 = @"NO";
    }

    __os_log_helper_16_2_1_8_64(v10, v2);
    _os_log_impl(&dword_26AC54000, oslog, OS_LOG_TYPE_DEFAULT, "SUSUIAuthenticationAlertAction got response:%@", v10, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (SUSUIAuthenticationAlertAction)initWithRollbackDescriptor:(id)a3 canDeferInstallation:(BOOL)a4 completionQueue:(id)a5 completionBlock:(id)a6
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = a4;
  v29 = 0;
  objc_storeStrong(&v29, a5);
  v28 = 0;
  objc_storeStrong(&v28, a6);
  v32->_alertType = 1;
  v27 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  if (location[0])
  {
    [v27 encodeObject:location[0] forKey:@"_susRollbackDescriptor"];
  }

  [v27 encodeBool:v30 forKey:@"_susCanDeferInstallation"];
  [v27 encodeInteger:v32->_alertType forKey:@"_susAlertType"];
  v26 = [v27 encodedData];
  v25 = objc_alloc_init(MEMORY[0x277CF0C80]);
  [v25 setObject:v26 forSetting:SUSUIAuthenticationAlertActionInput];
  [v25 setObject:@"SUSUIAuthenticationAlertAction" forSetting:SUSUIAuthenticationAlertActionInputType];
  v11 = v32;
  v12 = v25;
  v23 = 0;
  if (v29)
  {
    v10 = v29;
  }

  else
  {
    v9 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v24 = v9;
    v23 = 1;
    v10 = v24;
  }

  v17 = MEMORY[0x277D85DD0];
  v18 = -1073741824;
  v19 = 0;
  v20 = __114__SUSUIAuthenticationAlertAction_initWithRollbackDescriptor_canDeferInstallation_completionQueue_completionBlock___block_invoke;
  v21 = &unk_279CB3AE0;
  v22 = MEMORY[0x277D82BE0](v28);
  v32 = 0;
  v16.receiver = v11;
  v16.super_class = SUSUIAuthenticationAlertAction;
  v32 = [(SUSUIAuthenticationAlertAction *)&v16 initWithInfo:v12 timeout:v10 forResponseOnQueue:&v17 withHandler:0.0];
  objc_storeStrong(&v32, v32);
  if (v23)
  {
    MEMORY[0x277D82BD8](v24);
  }

  objc_storeStrong(&v32->_baseAction, 0);
  v32->_loaded = 1;
  v8 = MEMORY[0x277D82BE0](v32);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v32, 0);
  return v8;
}

void __114__SUSUIAuthenticationAlertAction_initWithRollbackDescriptor_canDeferInstallation_completionQueue_completionBlock___block_invoke(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = a1;
  v4 = [location[0] info];
  [v4 flagForSetting:SUSUIAuthenticationAlertActionOutputSuccess];
  IsYes = BSSettingFlagIsYes();
  MEMORY[0x277D82BD8](v4);
  v7 = IsYes;
  oslog = SUSUILog();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v2 = @"YES";
    }

    else
    {
      v2 = @"NO";
    }

    __os_log_helper_16_2_1_8_64(v10, v2);
    _os_log_impl(&dword_26AC54000, oslog, OS_LOG_TYPE_DEFAULT, "SUSUIAuthenticationAlertAction got response:%@", v10, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if (a1[4])
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (SUSUIAuthenticationAlertAction)initWithInfo:(id)a3 forBaseAction:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = [location[0] objectForSetting:SUSUIAuthenticationAlertActionInputType];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v9 isEqualToString:@"SUSUIAuthenticationAlertAction"])
  {
    v4 = v12;
    v12 = 0;
    v7.receiver = v4;
    v7.super_class = SUSUIAuthenticationAlertAction;
    v12 = [(SUSUIAuthenticationAlertAction *)&v7 initWithInfo:location[0] responder:0];
    objc_storeStrong(&v12, v12);
    if (v12)
    {
      [v12 setBaseAction:v10];
      *(v12 + 32) = 0;
    }

    v13 = MEMORY[0x277D82BE0](v12);
    v8 = 1;
  }

  else
  {
    v13 = 0;
    v8 = 1;
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v13;
}

- (SUDescriptor)descriptor
{
  [(SUSUIAuthenticationAlertAction *)self _loadIfNecessary];
  descriptor = self->_descriptor;

  return descriptor;
}

- (SURollbackDescriptor)rollbackDescriptor
{
  [(SUSUIAuthenticationAlertAction *)self _loadIfNecessary];
  rollbackDescriptor = self->_rollbackDescriptor;

  return rollbackDescriptor;
}

- (SUAutoInstallForecast)autoInstallForecast
{
  [(SUSUIAuthenticationAlertAction *)self _loadIfNecessary];
  autoInstallForecast = self->_autoInstallForecast;

  return autoInstallForecast;
}

- (void)fireCompletionIfNecessaryForResult:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  location = MEMORY[0x277D82BE0](self);
  if (v9->_baseAction)
  {
    objc_storeStrong(&location, v9->_baseAction);
  }

  if ([location canSendResponse])
  {
    v5 = objc_alloc_init(MEMORY[0x277CF0C80]);
    [v5 setFlag:BSSettingFlagForBool() forSetting:SUSUIAuthenticationAlertActionOutputSuccess];
    v3 = location;
    v4 = [MEMORY[0x277CF0B68] responseWithInfo:v5];
    [v3 sendResponse:?];
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(&location, 0);
}

- (void)_loadIfNecessary
{
  v15 = self;
  v14[1] = a2;
  if (!self->_loaded)
  {
    v12 = [(SUSUIAuthenticationAlertAction *)v15 info];
    v14[0] = [v12 objectForSetting:SUSUIAuthenticationAlertActionInput];
    MEMORY[0x277D82BD8](v12);
    v2 = objc_alloc(MEMORY[0x277CCAAC8]);
    v13 = [v2 initForReadingFromData:v14[0] error:?];
    v3 = [v13 decodeObjectOfClass:objc_opt_class() forKey:@"_susDescriptor"];
    descriptor = v15->_descriptor;
    v15->_descriptor = v3;
    MEMORY[0x277D82BD8](descriptor);
    v5 = [v13 decodeObjectOfClass:objc_opt_class() forKey:@"_susRollbackDescriptor"];
    rollbackDescriptor = v15->_rollbackDescriptor;
    v15->_rollbackDescriptor = v5;
    MEMORY[0x277D82BD8](rollbackDescriptor);
    v7 = [v13 decodeObjectOfClass:objc_opt_class() forKey:@"_susAutoInstallForecast"];
    autoInstallForecast = v15->_autoInstallForecast;
    v15->_autoInstallForecast = v7;
    MEMORY[0x277D82BD8](autoInstallForecast);
    v9 = [v13 decodeBoolForKey:@"_susForInstallTonight"];
    v15->_forInstallTonight = v9;
    v10 = [v13 decodeBoolForKey:@"_susCanDeferInstallation"];
    v15->_canDeferInstallation = v10;
    v11 = [v13 decodeIntegerForKey:@"_susAlertType"];
    v15->_alertType = v11;
    [v13 finishDecoding];
    v15->_loaded = 1;
    objc_storeStrong(&v13, 0);
    objc_storeStrong(v14, 0);
  }
}

@end
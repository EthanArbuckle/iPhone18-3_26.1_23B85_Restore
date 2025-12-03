@interface SUSUIAuthenticationAlertAction
- (SUAutoInstallForecast)autoInstallForecast;
- (SUDescriptor)descriptor;
- (SURollbackDescriptor)rollbackDescriptor;
- (SUSUIAuthenticationAlertAction)initWithDescriptor:(id)descriptor autoInstallForecast:(id)forecast forInstallTonight:(BOOL)tonight canDeferInstallation:(BOOL)installation completionQueue:(id)queue completionBlock:(id)block;
- (SUSUIAuthenticationAlertAction)initWithInfo:(id)info forBaseAction:(id)action;
- (SUSUIAuthenticationAlertAction)initWithRollbackDescriptor:(id)descriptor canDeferInstallation:(BOOL)installation completionQueue:(id)queue completionBlock:(id)block;
- (void)_loadIfNecessary;
- (void)fireCompletionIfNecessaryForResult:(BOOL)result;
@end

@implementation SUSUIAuthenticationAlertAction

- (SUSUIAuthenticationAlertAction)initWithDescriptor:(id)descriptor autoInstallForecast:(id)forecast forInstallTonight:(BOOL)tonight canDeferInstallation:(BOOL)installation completionQueue:(id)queue completionBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v36 = 0;
  objc_storeStrong(&v36, forecast);
  tonightCopy = tonight;
  installationCopy = installation;
  v33 = 0;
  objc_storeStrong(&v33, queue);
  v32 = 0;
  objc_storeStrong(&v32, block);
  selfCopy->_alertType = 0;
  v31 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  if (location[0])
  {
    [v31 encodeObject:location[0] forKey:@"_susDescriptor"];
  }

  if (v36)
  {
    [v31 encodeObject:v36 forKey:@"_susAutoInstallForecast"];
  }

  [v31 encodeBool:tonightCopy forKey:@"_susForInstallTonight"];
  [v31 encodeBool:installationCopy forKey:@"_susCanDeferInstallation"];
  [v31 encodeInteger:selfCopy->_alertType forKey:@"_susAlertType"];
  encodedData = [v31 encodedData];
  v29 = objc_alloc_init(MEMORY[0x277CF0C80]);
  [v29 setObject:encodedData forSetting:SUSUIAuthenticationAlertActionInput];
  [v29 setObject:@"SUSUIAuthenticationAlertAction" forSetting:SUSUIAuthenticationAlertActionInputType];
  v13 = selfCopy;
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
  selfCopy = 0;
  v20.receiver = v13;
  v20.super_class = SUSUIAuthenticationAlertAction;
  selfCopy = [(SUSUIAuthenticationAlertAction *)&v20 initWithInfo:v14 timeout:v12 forResponseOnQueue:&v21 withHandler:0.0];
  objc_storeStrong(&selfCopy, selfCopy);
  if (v27)
  {
    MEMORY[0x277D82BD8](v28);
  }

  objc_storeStrong(&selfCopy->_baseAction, 0);
  selfCopy->_loaded = 1;
  v10 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&encodedData, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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

- (SUSUIAuthenticationAlertAction)initWithRollbackDescriptor:(id)descriptor canDeferInstallation:(BOOL)installation completionQueue:(id)queue completionBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  installationCopy = installation;
  v29 = 0;
  objc_storeStrong(&v29, queue);
  v28 = 0;
  objc_storeStrong(&v28, block);
  selfCopy->_alertType = 1;
  v27 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  if (location[0])
  {
    [v27 encodeObject:location[0] forKey:@"_susRollbackDescriptor"];
  }

  [v27 encodeBool:installationCopy forKey:@"_susCanDeferInstallation"];
  [v27 encodeInteger:selfCopy->_alertType forKey:@"_susAlertType"];
  encodedData = [v27 encodedData];
  v25 = objc_alloc_init(MEMORY[0x277CF0C80]);
  [v25 setObject:encodedData forSetting:SUSUIAuthenticationAlertActionInput];
  [v25 setObject:@"SUSUIAuthenticationAlertAction" forSetting:SUSUIAuthenticationAlertActionInputType];
  v11 = selfCopy;
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
  selfCopy = 0;
  v16.receiver = v11;
  v16.super_class = SUSUIAuthenticationAlertAction;
  selfCopy = [(SUSUIAuthenticationAlertAction *)&v16 initWithInfo:v12 timeout:v10 forResponseOnQueue:&v17 withHandler:0.0];
  objc_storeStrong(&selfCopy, selfCopy);
  if (v23)
  {
    MEMORY[0x277D82BD8](v24);
  }

  objc_storeStrong(&selfCopy->_baseAction, 0);
  selfCopy->_loaded = 1;
  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&encodedData, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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

- (SUSUIAuthenticationAlertAction)initWithInfo:(id)info forBaseAction:(id)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, info);
  v10 = 0;
  objc_storeStrong(&v10, action);
  v9 = [location[0] objectForSetting:SUSUIAuthenticationAlertActionInputType];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v9 isEqualToString:@"SUSUIAuthenticationAlertAction"])
  {
    v4 = selfCopy;
    selfCopy = 0;
    v7.receiver = v4;
    v7.super_class = SUSUIAuthenticationAlertAction;
    selfCopy = [(SUSUIAuthenticationAlertAction *)&v7 initWithInfo:location[0] responder:0];
    objc_storeStrong(&selfCopy, selfCopy);
    if (selfCopy)
    {
      [selfCopy setBaseAction:v10];
      *(selfCopy + 32) = 0;
    }

    v13 = MEMORY[0x277D82BE0](selfCopy);
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
  objc_storeStrong(&selfCopy, 0);
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

- (void)fireCompletionIfNecessaryForResult:(BOOL)result
{
  selfCopy = self;
  v8 = a2;
  resultCopy = result;
  location = MEMORY[0x277D82BE0](self);
  if (selfCopy->_baseAction)
  {
    objc_storeStrong(&location, selfCopy->_baseAction);
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
  selfCopy = self;
  v14[1] = a2;
  if (!self->_loaded)
  {
    info = [(SUSUIAuthenticationAlertAction *)selfCopy info];
    v14[0] = [info objectForSetting:SUSUIAuthenticationAlertActionInput];
    MEMORY[0x277D82BD8](info);
    v2 = objc_alloc(MEMORY[0x277CCAAC8]);
    v13 = [v2 initForReadingFromData:v14[0] error:?];
    v3 = [v13 decodeObjectOfClass:objc_opt_class() forKey:@"_susDescriptor"];
    descriptor = selfCopy->_descriptor;
    selfCopy->_descriptor = v3;
    MEMORY[0x277D82BD8](descriptor);
    v5 = [v13 decodeObjectOfClass:objc_opt_class() forKey:@"_susRollbackDescriptor"];
    rollbackDescriptor = selfCopy->_rollbackDescriptor;
    selfCopy->_rollbackDescriptor = v5;
    MEMORY[0x277D82BD8](rollbackDescriptor);
    v7 = [v13 decodeObjectOfClass:objc_opt_class() forKey:@"_susAutoInstallForecast"];
    autoInstallForecast = selfCopy->_autoInstallForecast;
    selfCopy->_autoInstallForecast = v7;
    MEMORY[0x277D82BD8](autoInstallForecast);
    v9 = [v13 decodeBoolForKey:@"_susForInstallTonight"];
    selfCopy->_forInstallTonight = v9;
    v10 = [v13 decodeBoolForKey:@"_susCanDeferInstallation"];
    selfCopy->_canDeferInstallation = v10;
    v11 = [v13 decodeIntegerForKey:@"_susAlertType"];
    selfCopy->_alertType = v11;
    [v13 finishDecoding];
    selfCopy->_loaded = 1;
    objc_storeStrong(&v13, 0);
    objc_storeStrong(v14, 0);
  }
}

@end
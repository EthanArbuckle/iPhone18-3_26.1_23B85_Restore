@interface SUSUILaggardsUIAlertAction
- (SUDescriptor)descriptor;
- (SUSUILaggardsUIAlertAction)initWithDescriptor:(id)a3 completionBlock:(id)a4;
- (void)decodeFromCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)loadIfNecessary;
@end

@implementation SUSUILaggardsUIAlertAction

- (SUSUILaggardsUIAlertAction)initWithDescriptor:(id)a3 completionBlock:(id)a4
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  objc_storeStrong(&v24->_descriptor, location[0]);
  v21 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [(SUSUILaggardsUIAlertAction *)v24 encodeWithCoder:v21];
  v20 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v6 = v20;
  v7 = [v21 encodedData];
  [v6 setObject:? forSetting:?];
  MEMORY[0x277D82BD8](v7);
  v9 = v24;
  v10 = v20;
  v8 = MEMORY[0x277CF0B60];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __65__SUSUILaggardsUIAlertAction_initWithDescriptor_completionBlock___block_invoke;
  v17 = &unk_279CB5948;
  v18 = MEMORY[0x277D82BE0](v24);
  v19 = MEMORY[0x277D82BE0](v22);
  v11 = [v8 responderWithHandler:?];
  v24 = 0;
  v13.receiver = v9;
  v13.super_class = SUSUILaggardsUIAlertAction;
  v24 = [(SUSUILaggardsUIAlertAction *)&v13 initWithInfo:v10 responder:?];
  v12 = MEMORY[0x277D82BE0](v24);
  MEMORY[0x277D82BD8](v11);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v24, 0);
  return v12;
}

void __65__SUSUILaggardsUIAlertAction_initWithDescriptor_completionBlock___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = a1;
  v9 = [location[0] info];
  [v9 flagForSetting:SUSUILaggardsUIAlertActionOutputSuccess];
  IsYes = BSSettingFlagIsYes();
  MEMORY[0x277D82BD8](v9);
  v14 = IsYes;
  v13 = SUSUILog();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    v2 = a1[4];
    v3 = objc_opt_class();
    v4 = MEMORY[0x277D82BE0](v3);
    v11 = v4;
    if (v14)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    __os_log_helper_16_2_2_8_64_8_64(v17, v4, v5);
    _os_log_impl(&dword_26AC54000, log, type, "%@ got response: %@", v17, 0x16u);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (SUDescriptor)descriptor
{
  [(SUSUILaggardsUIAlertAction *)self loadIfNecessary];
  descriptor = self->_descriptor;

  return descriptor;
}

- (void)loadIfNecessary
{
  v6 = self;
  v5[1] = a2;
  if (!self->_loaded)
  {
    v3 = [(SUSUILaggardsUIAlertAction *)v6 info];
    v5[0] = [v3 objectForSetting:SUSUILaggardsUIAlertActionInput];
    MEMORY[0x277D82BD8](v3);
    v2 = objc_alloc(MEMORY[0x277CCAAC8]);
    v4 = [v2 initForReadingFromData:v5[0] error:?];
    [(SUSUILaggardsUIAlertAction *)v6 decodeFromCoder:v4];
    [v4 finishDecoding];
    v6->_loaded = 1;
    objc_storeStrong(&v4, 0);
    objc_storeStrong(v5, 0);
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_descriptor)
  {
    [location[0] encodeObject:v4->_descriptor forKey:@"_susDescriptor"];
  }

  objc_storeStrong(location, 0);
}

- (void)decodeFromCoder:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_susDescriptor"];
  descriptor = v6->_descriptor;
  v6->_descriptor = v3;
  MEMORY[0x277D82BD8](descriptor);
  objc_storeStrong(location, 0);
}

@end
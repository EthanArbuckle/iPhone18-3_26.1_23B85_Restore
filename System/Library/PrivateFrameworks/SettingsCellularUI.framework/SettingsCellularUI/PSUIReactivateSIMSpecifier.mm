@interface PSUIReactivateSIMSpecifier
- (PSListController)hostController;
- (PSUIReactivateSIMSpecifier)initWithPlanUniversalReference:(id)reference hostController:(id)controller;
- (void)_activateSIMPressed:(id)pressed;
- (void)_hideSpinner;
- (void)_showSpinner;
- (void)setProperty:(id)property forKey:(id)key;
- (void)transferBackCanceled:(id)canceled;
- (void)transferBackFailed:(id)failed error:(id)error;
- (void)transferBackSuccessFrom:(id)from to:(id)to;
@end

@implementation PSUIReactivateSIMSpecifier

- (PSUIReactivateSIMSpecifier)initWithPlanUniversalReference:(id)reference hostController:(id)controller
{
  v28 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  controllerCopy = controller;
  if (_MergedGlobals_1_0 != -1)
  {
    dispatch_once(&_MergedGlobals_1_0, &__block_literal_global_3);
  }

  v8 = +[PSUICellularPlanManagerCache sharedInstance];
  v9 = [v8 planFromReference:referenceCopy];

  type = [v9 type];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = v11;
  if (type)
  {
    v13 = @"ACTIVATE_ESIM";
  }

  else
  {
    v13 = @"CHECK_CELLULAR_CONNECTION";
  }

  v14 = [v11 localizedStringForKey:v13 value:&stru_287733598 table:@"Cellular"];

  v25.receiver = self;
  v25.super_class = PSUIReactivateSIMSpecifier;
  v15 = [(PSUIReactivateSIMSpecifier *)&v25 initWithName:v14 target:0 set:0 get:0 detail:0 cell:13 edit:0];
  v16 = v15;
  if (v15)
  {
    [(PSUIReactivateSIMSpecifier *)v15 setIdentifier:@"ACTIVATE_SIM"];
    [(PSUIReactivateSIMSpecifier *)v16 setTarget:v16];
    [(PSUIReactivateSIMSpecifier *)v16 setButtonAction:sel__activateSIMPressed_];
    objc_storeWeak(&v16->_hostController, controllerCopy);
    if (v9)
    {
      objc_storeStrong(&v16->_planItem, v9);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v16->_planItem isCheckingCellularConnectivity])
      {
        [(PSUIReactivateSIMSpecifier *)v16 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
      }
    }

    else
    {
      v17 = +[PSUICellularPlanManagerCache sharedInstance];
      v18 = [v17 danglingPlanFromReference:referenceCopy];

      planItem = v16->_planItem;
      v16->_planItem = v18;
    }

    iccid = [v16->_planItem iccid];
    v21 = [qword_28156A5E0 objectForKey:iccid];
    if (v21)
    {
      getLogger = [(PSUIReactivateSIMSpecifier *)v16 getLogger];
      if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v16;
        _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "update delegate to %@", buf, 0xCu);
      }

      [v21 setDelegate:v16];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __76__PSUIReactivateSIMSpecifier_initWithPlanUniversalReference_hostController___block_invoke()
{
  qword_28156A5E0 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)transferBackCanceled:(id)canceled
{
  v4 = *MEMORY[0x277D3FF38];
  canceledCopy = canceled;
  [(PSUIReactivateSIMSpecifier *)self setProperty:MEMORY[0x277CBEC38] forKey:v4];
  v6 = qword_28156A5E0;
  iccid = [canceledCopy iccid];

  [v6 removeObjectForKey:iccid];
}

- (void)transferBackFailed:(id)failed error:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  errorCopy = error;
  if (errorCopy)
  {
    getLogger = [(PSUIReactivateSIMSpecifier *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = errorCopy;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "transfer back failed : %@", &v12, 0xCu);
    }
  }

  [(PSUIReactivateSIMSpecifier *)self setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  v9 = qword_28156A5E0;
  iccid = [failedCopy iccid];
  [v9 removeObjectForKey:iccid];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)transferBackSuccessFrom:(id)from to:(id)to
{
  v5 = qword_28156A5E0;
  iccid = [from iccid];
  [v5 removeObjectForKey:iccid];

  WeakRetained = objc_loadWeakRetained(&self->_hostController);
  navigationController = [WeakRetained navigationController];
  v8 = [navigationController popViewControllerAnimated:1];
}

- (void)setProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  v9.receiver = self;
  v9.super_class = PSUIReactivateSIMSpecifier;
  keyCopy = key;
  [(PSUIReactivateSIMSpecifier *)&v9 setProperty:propertyCopy forKey:keyCopy];
  v8 = [*MEMORY[0x277D3FF38] isEqualToString:{keyCopy, v9.receiver, v9.super_class}];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([propertyCopy BOOLValue])
      {
        [(PSUIReactivateSIMSpecifier *)self _hideSpinner];
      }

      else
      {
        [(PSUIReactivateSIMSpecifier *)self _showSpinner];
      }
    }
  }
}

- (void)_activateSIMPressed:(id)pressed
{
  v15 = *MEMORY[0x277D85DE8];
  getLogger = [(PSUIReactivateSIMSpecifier *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    planItem = self->_planItem;
    v13 = 138412290;
    v14 = planItem;
    _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "transfer back : %@", &v13, 0xCu);
  }

  [(PSUIReactivateSIMSpecifier *)self setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  iccid = [self->_planItem iccid];
  v7 = [qword_28156A5E0 objectForKey:iccid];
  if (v7)
  {
    WeakRetained = [(PSUIReactivateSIMSpecifier *)self getLogger];
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&dword_2658DE000, WeakRetained, OS_LOG_TYPE_ERROR, "this should not happen.", &v13, 2u);
    }
  }

  else
  {
    v9 = [TransferBackPlanCache alloc];
    WeakRetained = objc_loadWeakRetained(&self->_hostController);
    navigationController = [WeakRetained navigationController];
    v11 = [(TransferBackPlanCache *)v9 initWithDelegate:self navigationController:navigationController transferBackPlan:self->_planItem];
    [qword_28156A5E0 setObject:v11 forKeyedSubscript:iccid];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_showSpinner
{
  if (self->_spinner)
  {
    v3 = *MEMORY[0x277D40148];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = self->_spinner;
    self->_spinner = v4;

    v3 = *MEMORY[0x277D40148];
    v6 = [(PSUIReactivateSIMSpecifier *)self propertyForKey:*MEMORY[0x277D40148]];
    accessoryView = [v6 accessoryView];
    originAccessoryView = self->_originAccessoryView;
    self->_originAccessoryView = accessoryView;
  }

  v9 = [(PSUIReactivateSIMSpecifier *)self propertyForKey:v3];
  v10 = v9;
  if (v9)
  {
    [v9 setAccessoryView:self->_spinner];
    [(UIActivityIndicatorView *)self->_spinner startAnimating];
  }

  else
  {
    getLogger = [(PSUIReactivateSIMSpecifier *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "invalid table cell", v12, 2u);
    }
  }
}

- (void)_hideSpinner
{
  v3 = [(PSUIReactivateSIMSpecifier *)self propertyForKey:*MEMORY[0x277D40148]];
  if (v3)
  {
    [(UIActivityIndicatorView *)self->_spinner stopAnimating];
    [v3 setAccessoryView:self->_originAccessoryView];
  }

  else
  {
    getLogger = [(PSUIReactivateSIMSpecifier *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_ERROR, "invalid table cell", v5, 2u);
    }
  }
}

- (PSListController)hostController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostController);

  return WeakRetained;
}

@end
@interface TSUserResponseFlow
- (TSUserResponseFlow)initWithConfirmationCodeRequired:(BOOL)required;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)from;
- (void)firstViewController:(id)controller;
- (void)setCancelNavigationBarItems:(id)items;
- (void)viewControllerDidComplete:(id)complete;
@end

@implementation TSUserResponseFlow

- (TSUserResponseFlow)initWithConfirmationCodeRequired:(BOOL)required
{
  v8.receiver = self;
  v8.super_class = TSUserResponseFlow;
  v4 = [(TSSIMSetupFlow *)&v8 init];
  v4->_confirmationCodeRequired = required;
  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v4 action:sel_userDidTapCancel];
  cancelButton = v4->_cancelButton;
  v4->_cancelButton = v5;

  v4->_userConsentType = 0;
  return v4;
}

- (id)firstViewController
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = +[TSCellularPlanManagerCache sharedInstance];
  planItems = [v3 planItems];

  v5 = +[TSCellularPlanManagerCache sharedInstance];
  v6 = [v5 calculateInstallConsentTextTypeFor:planItems];

  if (v6 > 2)
  {
    if ((v6 - 3) >= 3)
    {
      goto LABEL_17;
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      v7 = _TSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315138;
        v17 = "[TSUserResponseFlow firstViewController]";
        _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "disable not allowed @%s", &v16, 0xCu);
      }

      v8 = 3;
    }

    else
    {
      if (v6 != 2)
      {
        goto LABEL_17;
      }

      v7 = _TSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315138;
        v17 = "[TSUserResponseFlow firstViewController]";
        _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "delete not allowed @%s", &v16, 0xCu);
      }

      v8 = 2;
    }

    goto LABEL_16;
  }

  if (self->_confirmationCodeRequired)
  {
    goto LABEL_17;
  }

  v7 = _TSLogDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[TSUserResponseFlow firstViewController]";
    _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "Invalid consent - General install @%s", &v16, 0xCu);
  }

  v8 = 4;
LABEL_16:

  self->_userConsentType = v8;
LABEL_17:
  if (self->_confirmationCodeRequired)
  {
    v9 = [[SSConfirmationCodeViewController alloc] initAsMidOperationWithCarrierName:0];
  }

  else
  {
    v9 = [[TSUserConsentViewController alloc] initWithConsentType:self->_userConsentType name:0];
  }

  v10 = v9;
  [(TSUserConsentViewController *)v9 setDelegate:self];
  v11 = _TSLogDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v16 = 138412546;
    v17 = v12;
    v18 = 2080;
    v19 = "[TSUserResponseFlow firstViewController]";
    v13 = v12;
    _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "first view: %@ @%s", &v16, 0x16u);
  }

  [(TSSIMSetupFlow *)self setTopViewController:v10];
  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)firstViewController:(id)controller
{
  if (controller)
  {
    controllerCopy = controller;
    firstViewController = [(TSUserResponseFlow *)self firstViewController];
    (*(controller + 2))(controllerCopy, firstViewController);
  }
}

- (id)nextViewControllerFrom:(id)from
{
  fromCopy = from;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && self->_userConsentType)
  {
    v6 = [[TSUserConsentViewController alloc] initWithConsentType:self->_userConsentType name:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)viewControllerDidComplete:(id)complete
{
  completeCopy = complete;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    confirmationCode = [completeCopy confirmationCode];
    confirmationCode = self->_confirmationCode;
    self->_confirmationCode = confirmationCode;

    if (!self->_userConsentType)
    {
      v7 = +[TSCellularPlanManagerCache sharedInstance];
      v8 = v7;
      v9 = self->_confirmationCode;
      userConsentResponse = 1;
LABEL_6:
      [v7 sendUserResponse:userConsentResponse confirmationCode:v9];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = +[TSCellularPlanManagerCache sharedInstance];
      userConsentResponse = [completeCopy userConsentResponse];
      v9 = self->_confirmationCode;
      v7 = v8;
      goto LABEL_6;
    }
  }

  v11.receiver = self;
  v11.super_class = TSUserResponseFlow;
  [(TSSIMSetupFlow *)&v11 viewControllerDidComplete:completeCopy];
}

- (void)setCancelNavigationBarItems:(id)items
{
  itemsCopy = items;
  if (+[TSUtilities isPad])
  {
    navigationItem = [itemsCopy navigationItem];
    [navigationItem setRightBarButtonItem:self->_cancelButton];
  }
}

@end
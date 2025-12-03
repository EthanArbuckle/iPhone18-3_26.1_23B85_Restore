@interface TSOnDeviceConversionFlow
- (TSOnDeviceConversionFlow)initWithPhoneNumber:(id)number carrierName:(id)name;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)from;
- (void)firstViewController:(id)controller;
- (void)setCancelNavigationBarItems:(id)items;
@end

@implementation TSOnDeviceConversionFlow

- (TSOnDeviceConversionFlow)initWithPhoneNumber:(id)number carrierName:(id)name
{
  numberCopy = number;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = TSOnDeviceConversionFlow;
  v9 = [(TSSIMSetupFlow *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_phoneNumber, number);
    objc_storeStrong(&v10->_carrierName, name);
    v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v10 action:sel_userDidTapCancel];
    cancelButton = v10->_cancelButton;
    v10->_cancelButton = v11;
  }

  return v10;
}

- (id)firstViewController
{
  v11 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [[TSSinglePlanTransferViewController alloc] initWithLocalPhysical:self->_phoneNumber carrierName:self->_carrierName];
  [(TSSinglePlanTransferViewController *)v3 setDelegate:self];
  v4 = _TSLogDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2080;
    v10 = "[TSOnDeviceConversionFlow firstViewController]";
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "first view: %@ @%s", &v7, 0x16u);
  }

  [(TSSIMSetupFlow *)self setTopViewController:v3];
  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)firstViewController:(id)controller
{
  if (controller)
  {
    controllerCopy = controller;
    firstViewController = [(TSOnDeviceConversionFlow *)self firstViewController];
    (*(controller + 2))(controllerCopy, firstViewController);
  }
}

- (id)nextViewControllerFrom:(id)from
{
  v13[4] = *MEMORY[0x277D85DE8];
  fromCopy = from;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [TSSubFlowViewController alloc];
    v12[0] = @"FlowTypeKey";
    v12[1] = @"SkipActivatingPane";
    v13[0] = &unk_287583E68;
    v13[1] = MEMORY[0x277CBEC38];
    v12[2] = @"DelayStartActivatingTimer";
    v12[3] = @"LocalConversionOngoing";
    v13[2] = &unk_287583E80;
    v13[3] = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];
    navigationController = [(TSSIMSetupFlow *)self navigationController];
    v9 = [(TSSubFlowViewController *)v6 initWithOptions:v7 navigationController:navigationController delegate:self];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)setCancelNavigationBarItems:(id)items
{
  itemsCopy = items;
  v4 = +[TSUtilities isPad];
  navigationItem = [itemsCopy navigationItem];
  navigationItem2 = navigationItem;
  if (v4)
  {
    [navigationItem setRightBarButtonItem:self->_cancelButton];
  }

  else
  {
    [navigationItem setHidesBackButton:1 animated:0];

    navigationItem2 = [itemsCopy navigationItem];
    [navigationItem2 setLeftBarButtonItem:self->_cancelButton];
  }
}

@end
@interface TSOnDeviceConversionFlow
- (TSOnDeviceConversionFlow)initWithPhoneNumber:(id)a3 carrierName:(id)a4;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)a3;
- (void)firstViewController:(id)a3;
- (void)setCancelNavigationBarItems:(id)a3;
@end

@implementation TSOnDeviceConversionFlow

- (TSOnDeviceConversionFlow)initWithPhoneNumber:(id)a3 carrierName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TSOnDeviceConversionFlow;
  v9 = [(TSSIMSetupFlow *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_phoneNumber, a3);
    objc_storeStrong(&v10->_carrierName, a4);
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

- (void)firstViewController:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(TSOnDeviceConversionFlow *)self firstViewController];
    (*(a3 + 2))(v5, v6);
  }
}

- (id)nextViewControllerFrom:(id)a3
{
  v13[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v8 = [(TSSIMSetupFlow *)self navigationController];
    v9 = [(TSSubFlowViewController *)v6 initWithOptions:v7 navigationController:v8 delegate:self];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)setCancelNavigationBarItems:(id)a3
{
  v7 = a3;
  v4 = +[TSUtilities isPad];
  v5 = [v7 navigationItem];
  v6 = v5;
  if (v4)
  {
    [v5 setRightBarButtonItem:self->_cancelButton];
  }

  else
  {
    [v5 setHidesBackButton:1 animated:0];

    v6 = [v7 navigationItem];
    [v6 setLeftBarButtonItem:self->_cancelButton];
  }
}

@end
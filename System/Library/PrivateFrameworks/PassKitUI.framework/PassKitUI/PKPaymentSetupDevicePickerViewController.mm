@interface PKPaymentSetupDevicePickerViewController
- (PKPaymentSetupDevicePickerViewController)initWithProvisioningController:(id)controller context:(int64_t)context setupDelegate:(id)delegate product:(id)product webService:(id)service nanoWebService:(id)webService;
- (PKPaymentSetupDevicePickerViewControllerFlowDelegate)flowDelegate;
- (void)didSelectWebService:(id)service;
- (void)preflightWithCompletion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupDevicePickerViewController

- (PKPaymentSetupDevicePickerViewController)initWithProvisioningController:(id)controller context:(int64_t)context setupDelegate:(id)delegate product:(id)product webService:(id)service nanoWebService:(id)webService
{
  v26[2] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  delegateCopy = delegate;
  productCopy = product;
  serviceCopy = service;
  webServiceCopy = webService;
  v25.receiver = self;
  v25.super_class = PKPaymentSetupDevicePickerViewController;
  v18 = [(PKDynamicCollectionViewController *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_provisioningController, controller);
    v19->_setupContext = context;
    objc_storeStrong(&v19->_setupDelegate, delegate);
    objc_storeStrong(&v19->_product, product);
    objc_storeStrong(&v19->_webService, service);
    objc_storeStrong(&v19->_nanoWebService, webService);
    v26[0] = serviceCopy;
    v26[1] = webServiceCopy;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    webServices = v19->_webServices;
    v19->_webServices = v20;
  }

  return v19;
}

- (void)viewDidLoad
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = PKPaymentSetupDevicePickerViewController;
  [(PKDynamicCollectionViewController *)&v9 viewDidLoad];
  v3 = PKLocalizedPaymentString(&cfstr_IssuerAddCardW.isa);
  product = self->_product;
  if (product)
  {
    displayName = [(PKPaymentSetupProduct *)product displayName];
    v6 = PKLocalizedPaymentString(&cfstr_IssuerAddPicke.isa, &stru_1F3BD5BF0.isa, displayName);
  }

  else
  {
    v6 = PKLocalizedPaymentString(&cfstr_IssuerAddPicke_0.isa);
  }

  v7 = [[PKPaymentSetupDevicePickerListSectionController alloc] initWithWebServices:self->_webServices title:v3 subtitle:v6 image:self->_cardImage];
  [(PKPaymentSetupDevicePickerListSectionController *)v7 setDelegate:self];
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(PKDynamicCollectionViewController *)self setSections:v8 animated:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupDevicePickerViewController;
  [(PKDynamicCollectionViewController *)&v4 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  product = self->_product;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__PKPaymentSetupDevicePickerViewController_preflightWithCompletion___block_invoke;
  v8[3] = &unk_1E8012AF0;
  v8[4] = self;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [(PKPaymentSetupProduct *)product digitalCardCachedImage:v8];
}

void __68__PKPaymentSetupDevicePickerViewController_preflightWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(a1 + 32) + 1144), a3);
  }

  if (*(*(a1 + 32) + 1136))
  {
    v6 = [objc_alloc(MEMORY[0x1E69B8D48]) initWithWebService:*(*(a1 + 32) + 1136)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 1080);
    *(v7 + 1080) = v6;

    v9 = [*(*(a1 + 32) + 1104) copy];
    v10 = *(a1 + 32);
    v11 = *(v10 + 1112);
    *(v10 + 1112) = v9;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = [*(*(a1 + 32) + 1112) setupProductMethods];
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(a1 + 32) + 1112);
          [*(*(&v25 + 1) + 8 * i) type];
          v18 = PKPaymentSupportedProvisioningMethodToString();
          [v17 setProvisioningMethodMetadata:0 forType:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    v19 = *(a1 + 32);
    v20 = *(v19 + 1080);
    v21 = *(v19 + 1112);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __68__PKPaymentSetupDevicePickerViewController_preflightWithCompletion___block_invoke_2;
    v23[3] = &unk_1E8010B50;
    v24 = *(a1 + 40);
    [v20 requestProvisioningMethodMetadataForProduct:v21 completionHandler:v23];
  }

  else
  {
    v22 = *(a1 + 40);
    if (v22)
    {
      (*(v22 + 16))(v22, 1);
    }
  }
}

uint64_t __68__PKPaymentSetupDevicePickerViewController_preflightWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)didSelectWebService:(id)service
{
  v18[2] = *MEMORY[0x1E69E9840];
  v5 = 6;
  if (self->_nanoWebService == service)
  {
    v5 = 15;
    v6 = 16;
  }

  else
  {
    v6 = 9;
  }

  v7 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKPaymentSetupDevicePickerListSectionController__items[v5]);
  v8 = *(&self->super.super.super.super.isa + OBJC_IVAR___PKPaymentSetupDevicePickerListSectionController__items[v6]);
  reporter = self->_reporter;
  v10 = *MEMORY[0x1E69BA680];
  v18[0] = *MEMORY[0x1E69BA708];
  v11 = *MEMORY[0x1E69BA5F8];
  v17[0] = v10;
  v17[1] = v11;
  targetDevice = [service targetDevice];
  deviceClass = [targetDevice deviceClass];
  if ([deviceClass isEqualToString:@"iPhone"])
  {
    v14 = @"phone";
  }

  else if ([deviceClass isEqualToString:@"iPad"])
  {
    v14 = @"pad";
  }

  else if ([deviceClass isEqualToString:@"Watch"])
  {
    v14 = @"watch";
  }

  else if ([deviceClass isEqualToString:@"Mac"])
  {
    v14 = @"mac";
  }

  else if ([deviceClass isEqualToString:@"RealityDevice"])
  {
    v14 = @"vision";
  }

  else
  {
    v14 = @"unknown";
  }

  v18[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportEvent:v15];

  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  [WeakRetained devicePickerViewController:self didSelectProvisioningController:v7 product:v8];
}

- (PKPaymentSetupDevicePickerViewControllerFlowDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

@end
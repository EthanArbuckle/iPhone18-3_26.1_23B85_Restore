@interface PKPaymentAuthorizationProvisioningInterface
- (PKPaymentAuthorizationProvisioningInterface)initWithConfiguration:(id)configuration delegate:(id)delegate;
- (id)createPrimaryViewController;
@end

@implementation PKPaymentAuthorizationProvisioningInterface

- (PKPaymentAuthorizationProvisioningInterface)initWithConfiguration:(id)configuration delegate:(id)delegate
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = PKPaymentAuthorizationProvisioningInterface;
  v9 = [(PKPaymentAuthorizationProvisioningInterface *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    createPrimaryViewController = [(PKPaymentAuthorizationProvisioningInterface *)v10 createPrimaryViewController];
    primaryViewController = v10->_primaryViewController;
    v10->_primaryViewController = createPrimaryViewController;
  }

  return v10;
}

- (id)createPrimaryViewController
{
  v3 = objc_alloc(MEMORY[0x1E69B8D48]);
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  v5 = [v3 initWithWebService:mEMORY[0x1E69B8EF8]];

  request = [(PKPaymentRequestViewInterfaceConfiguration *)self->_configuration request];
  supportedNetworks = [request supportedNetworks];
  [v5 setAllowedPaymentNetworks:supportedNetworks];

  v8 = [objc_alloc(MEMORY[0x1E69B90E0]) initWithEnvironment:8 provisioningController:v5 groupsController:0];
  v9 = [[PKPaymentSetupDismissibleNavigationController alloc] initWithContext:8];
  [(PKPaymentSetupDismissibleNavigationController *)v9 useStandardPlatformPresentationStyle];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__PKPaymentAuthorizationProvisioningInterface_createPrimaryViewController__block_invoke;
  v12[3] = &unk_1E80110E0;
  objc_copyWeak(&v14, &location);
  v10 = v5;
  v13 = v10;
  [PKProvisioningFlowBridge startProvisionToPurchaseFlowWithNavController:v9 context:v8 onFirstViewControllerShown:0 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v9;
}

void __74__PKPaymentAuthorizationProvisioningInterface_createPrimaryViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [*(a1 + 32) provisionedPasses];
    v4 = [v3 lastObject];
    v5 = [v4 secureElementPass];
    v6 = [v5 paymentPass];

    v7 = objc_loadWeakRetained(v8 + 2);
    [v7 paymentAuthorizationProvisioningDidFinishWithPass:v6];

    WeakRetained = v8;
  }
}

@end
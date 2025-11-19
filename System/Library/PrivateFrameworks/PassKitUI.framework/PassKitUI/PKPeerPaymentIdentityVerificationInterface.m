@interface PKPeerPaymentIdentityVerificationInterface
- (PKPeerPaymentIdentityVerificationInterface)initWithConfiguration:(id)a3 delegate:(id)a4;
- (id)createPrimaryViewControllerWithVerificationResponse:(id)a3;
- (void)preflightWithCompletion:(id)a3;
- (void)viewControllerDidCancelSetupFlow:(id)a3;
- (void)viewControllerDidTerminateSetupFlow:(id)a3;
@end

@implementation PKPeerPaymentIdentityVerificationInterface

- (PKPeerPaymentIdentityVerificationInterface)initWithConfiguration:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKPeerPaymentIdentityVerificationInterface;
  v9 = [(PKPeerPaymentIdentityVerificationInterface *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    objc_storeStrong(&v10->_configuration, a3);
  }

  return v10;
}

- (void)preflightWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B8EF8] sharedService];
  v6 = [MEMORY[0x1E69B9020] sharedService];
  v7 = objc_alloc_init(MEMORY[0x1E69B8F88]);
  v8 = [v5 context];
  [v7 setDevSigned:{objc_msgSend(v8, "devSigned")}];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__PKPeerPaymentIdentityVerificationInterface_preflightWithCompletion___block_invoke;
  v10[3] = &unk_1E8017B70;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v6 peerPaymentIdentityVerificationRequest:v7 completion:v10];
}

void __70__PKPeerPaymentIdentityVerificationInterface_preflightWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__PKPeerPaymentIdentityVerificationInterface_preflightWithCompletion___block_invoke_2;
  v10[3] = &unk_1E8014760;
  v11 = v6;
  v12 = v5;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

uint64_t __70__PKPeerPaymentIdentityVerificationInterface_preflightWithCompletion___block_invoke_2(uint64_t a1)
{
  if (!*(a1 + 32) && *(a1 + 40))
  {
    v2 = [*(a1 + 48) createPrimaryViewControllerWithVerificationResponse:?];
    v3 = *(a1 + 48);
    v4 = *(v3 + 24);
    *(v3 + 24) = v2;
  }

  v5 = *(*(a1 + 56) + 16);

  return v5();
}

- (id)createPrimaryViewControllerWithVerificationResponse:(id)a3
{
  v4 = a3;
  if (PKDeviceSupportsPeerPaymentIdentityVerification())
  {
    v5 = [PKPeerPaymentIdentityVerificationController alloc];
    v6 = [MEMORY[0x1E69B9020] sharedService];
    v7 = [(PKPeerPaymentIdentityVerificationController *)v5 initWithPeerPaymentWebService:v6 identityVerificationResponse:v4 setupDelegate:self hideInitialSplashScreen:0 context:8];

    v8 = [(PKPeerPaymentIdentityVerificationController *)v7 firstViewController];
    if (v8)
    {
      v9 = [[PKNavigationController alloc] initWithRootViewController:v8];
      [(PKNavigationController *)v9 setSupportedInterfaceOrientations:2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)viewControllerDidTerminateSetupFlow:(id)a3
{
  v4 = [MEMORY[0x1E69B9000] sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__PKPeerPaymentIdentityVerificationInterface_viewControllerDidTerminateSetupFlow___block_invoke;
  v5[3] = &unk_1E80140E8;
  v5[4] = self;
  [v4 updateAccountWithCompletion:v5];
}

void __82__PKPeerPaymentIdentityVerificationInterface_viewControllerDidTerminateSetupFlow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__PKPeerPaymentIdentityVerificationInterface_viewControllerDidTerminateSetupFlow___block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __82__PKPeerPaymentIdentityVerificationInterface_viewControllerDidTerminateSetupFlow___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained peerPaymentIdentityVerificationDidFinishWithAccount:*(a1 + 40)];
}

- (void)viewControllerDidCancelSetupFlow:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134349056;
    v7 = self;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentIdentityVerificationInterface (%{public}p): Dismissing because setup was cancelled", &v6, 0xCu);
  }

  v5 = [(PKPaymentRequestViewInterfaceConfiguration *)self->_configuration presenter];
  [v5 dismissWithReason:3 completion:0];
}

@end
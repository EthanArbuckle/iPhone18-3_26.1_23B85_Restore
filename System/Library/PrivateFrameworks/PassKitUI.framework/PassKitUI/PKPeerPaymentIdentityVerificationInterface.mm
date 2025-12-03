@interface PKPeerPaymentIdentityVerificationInterface
- (PKPeerPaymentIdentityVerificationInterface)initWithConfiguration:(id)configuration delegate:(id)delegate;
- (id)createPrimaryViewControllerWithVerificationResponse:(id)response;
- (void)preflightWithCompletion:(id)completion;
- (void)viewControllerDidCancelSetupFlow:(id)flow;
- (void)viewControllerDidTerminateSetupFlow:(id)flow;
@end

@implementation PKPeerPaymentIdentityVerificationInterface

- (PKPeerPaymentIdentityVerificationInterface)initWithConfiguration:(id)configuration delegate:(id)delegate
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = PKPeerPaymentIdentityVerificationInterface;
  v9 = [(PKPeerPaymentIdentityVerificationInterface *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    objc_storeStrong(&v10->_configuration, configuration);
  }

  return v10;
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
  mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
  v7 = objc_alloc_init(MEMORY[0x1E69B8F88]);
  context = [mEMORY[0x1E69B8EF8] context];
  [v7 setDevSigned:{objc_msgSend(context, "devSigned")}];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__PKPeerPaymentIdentityVerificationInterface_preflightWithCompletion___block_invoke;
  v10[3] = &unk_1E8017B70;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [mEMORY[0x1E69B9020] peerPaymentIdentityVerificationRequest:v7 completion:v10];
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

- (id)createPrimaryViewControllerWithVerificationResponse:(id)response
{
  responseCopy = response;
  if (PKDeviceSupportsPeerPaymentIdentityVerification())
  {
    v5 = [PKPeerPaymentIdentityVerificationController alloc];
    mEMORY[0x1E69B9020] = [MEMORY[0x1E69B9020] sharedService];
    v7 = [(PKPeerPaymentIdentityVerificationController *)v5 initWithPeerPaymentWebService:mEMORY[0x1E69B9020] identityVerificationResponse:responseCopy setupDelegate:self hideInitialSplashScreen:0 context:8];

    firstViewController = [(PKPeerPaymentIdentityVerificationController *)v7 firstViewController];
    if (firstViewController)
    {
      v9 = [[PKNavigationController alloc] initWithRootViewController:firstViewController];
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

- (void)viewControllerDidTerminateSetupFlow:(id)flow
{
  mEMORY[0x1E69B9000] = [MEMORY[0x1E69B9000] sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__PKPeerPaymentIdentityVerificationInterface_viewControllerDidTerminateSetupFlow___block_invoke;
  v5[3] = &unk_1E80140E8;
  v5[4] = self;
  [mEMORY[0x1E69B9000] updateAccountWithCompletion:v5];
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

- (void)viewControllerDidCancelSetupFlow:(id)flow
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134349056;
    selfCopy = self;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentIdentityVerificationInterface (%{public}p): Dismissing because setup was cancelled", &v6, 0xCu);
  }

  presenter = [(PKPaymentRequestViewInterfaceConfiguration *)self->_configuration presenter];
  [presenter dismissWithReason:3 completion:0];
}

@end
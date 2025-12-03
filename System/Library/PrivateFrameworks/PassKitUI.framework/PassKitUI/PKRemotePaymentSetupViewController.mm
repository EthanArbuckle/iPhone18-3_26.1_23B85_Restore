@interface PKRemotePaymentSetupViewController
- (void)didFinishWithPasses:(id)passes error:(id)error;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation PKRemotePaymentSetupViewController

- (void)didFinishWithPasses:(id)passes error:(id)error
{
  passesCopy = passes;
  errorCopy = error;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PKRemotePaymentSetupViewController_didFinishWithPasses_error___block_invoke;
  block[3] = &unk_1E8010A88;
  block[4] = self;
  v11 = passesCopy;
  v12 = errorCopy;
  v8 = errorCopy;
  v9 = passesCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __64__PKRemotePaymentSetupViewController_didFinishWithPasses_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) parentViewController];
  [v2 didFinishWithPasses:*(a1 + 40) error:*(a1 + 48)];
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v9 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = errorCopy;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPaymentSetupViewController view service did terminated with error: %@", &v7, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69B9E70] code:0 userInfo:0];
  [(PKRemotePaymentSetupViewController *)self didFinishWithPasses:0 error:v6];
}

@end
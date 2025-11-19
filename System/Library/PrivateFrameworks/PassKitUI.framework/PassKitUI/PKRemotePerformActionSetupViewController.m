@interface PKRemotePerformActionSetupViewController
- (void)didCancelAction;
- (void)didPerformAction;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation PKRemotePerformActionSetupViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = a3;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPerformActionSetupViewController view service terminated with error: %@", &v6, 0xCu);
  }

  [(PKRemotePerformActionSetupViewController *)self didCancelAction];
}

- (void)didCancelAction
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKRemotePerformActionSetupViewController_didCancelAction__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __59__PKRemotePerformActionSetupViewController_didCancelAction__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) parentViewController];
  [v1 didCancel];
}

- (void)didPerformAction
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PKRemotePerformActionSetupViewController_didPerformAction__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __60__PKRemotePerformActionSetupViewController_didPerformAction__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) parentViewController];
  [v1 didFinish];
}

@end
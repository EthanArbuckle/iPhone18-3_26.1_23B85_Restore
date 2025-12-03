@interface WFSecureConfirmationAlert
- (WFSecureConfirmationAlert)init;
- (id)buttons;
- (id)configuredCancelButton;
- (id)configuredContinueButton;
- (void)setCancellationHandler:(id)handler;
- (void)setFailureHandler:(id)handler;
- (void)setSuccessHandler:(id)handler;
@end

@implementation WFSecureConfirmationAlert

- (id)configuredContinueButton
{
  v3 = MEMORY[0x1E6996C78];
  v4 = WFLocalizedStringWithKey(@"AlertContinue", @"Continue");
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__WFSecureConfirmationAlert_configuredContinueButton__block_invoke;
  v7[3] = &unk_1E837FA70;
  v7[4] = self;
  v5 = [v3 buttonWithTitle:v4 style:0 preferred:1 handler:v7];

  return v5;
}

void __53__WFSecureConfirmationAlert_configuredContinueButton__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__WFSecureConfirmationAlert_configuredContinueButton__block_invoke_2;
  v4[3] = &unk_1E837C4D8;
  v4[4] = *(a1 + 32);
  v5 = v2;
  v3 = v2;
  [v3 requestUnlockIfNeeded:v4];
}

void __53__WFSecureConfirmationAlert_configuredContinueButton__block_invoke_2(uint64_t a1, int a2)
{
  if (a2 && ([*(a1 + 32) successHandler], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [*(a1 + 32) successHandler];
  }

  else
  {
    v5 = [*(a1 + 32) failureHandler];

    if (!v5)
    {
      return;
    }

    v4 = [*(a1 + 32) failureHandler];
  }

  v6 = v4;
  (*(v4 + 16))();
}

- (id)configuredCancelButton
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__WFSecureConfirmationAlert_configuredCancelButton__block_invoke;
  v4[3] = &unk_1E837FA70;
  v4[4] = self;
  v2 = [MEMORY[0x1E6996C78] cancelButtonWithHandler:v4];

  return v2;
}

void __51__WFSecureConfirmationAlert_configuredCancelButton__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cancellationHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) cancellationHandler];
    v3[2]();
  }
}

- (id)buttons
{
  v8[2] = *MEMORY[0x1E69E9840];
  cancelButton = [(WFSecureConfirmationAlert *)self cancelButton];
  v8[0] = cancelButton;
  continueButton = [(WFSecureConfirmationAlert *)self continueButton];
  v8[1] = continueButton;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)setSuccessHandler:(id)handler
{
  v4 = [handler copy];
  successHandler = self->_successHandler;
  self->_successHandler = v4;

  configuredContinueButton = [(WFSecureConfirmationAlert *)self configuredContinueButton];
  continueButton = self->_continueButton;
  self->_continueButton = configuredContinueButton;
}

- (void)setFailureHandler:(id)handler
{
  v4 = [handler copy];
  failureHandler = self->_failureHandler;
  self->_failureHandler = v4;

  configuredContinueButton = [(WFSecureConfirmationAlert *)self configuredContinueButton];
  continueButton = self->_continueButton;
  self->_continueButton = configuredContinueButton;
}

- (void)setCancellationHandler:(id)handler
{
  v4 = [handler copy];
  cancellationHandler = self->_cancellationHandler;
  self->_cancellationHandler = v4;

  configuredCancelButton = [(WFSecureConfirmationAlert *)self configuredCancelButton];
  cancelButton = self->_cancelButton;
  self->_cancelButton = configuredCancelButton;
}

- (WFSecureConfirmationAlert)init
{
  v10.receiver = self;
  v10.super_class = WFSecureConfirmationAlert;
  v2 = [(WFSecureConfirmationAlert *)&v10 init];
  v3 = v2;
  if (v2)
  {
    configuredCancelButton = [(WFSecureConfirmationAlert *)v2 configuredCancelButton];
    cancelButton = v3->_cancelButton;
    v3->_cancelButton = configuredCancelButton;

    configuredContinueButton = [(WFSecureConfirmationAlert *)v3 configuredContinueButton];
    continueButton = v3->_continueButton;
    v3->_continueButton = configuredContinueButton;

    v8 = v3;
  }

  return v3;
}

@end
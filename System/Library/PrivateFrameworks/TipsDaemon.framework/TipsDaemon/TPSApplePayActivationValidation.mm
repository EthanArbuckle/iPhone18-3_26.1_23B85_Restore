@interface TPSApplePayActivationValidation
- (BOOL)getCurrentState;
- (void)getCurrentStateWithCompletion:(id)completion;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSApplePayActivationValidation

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  getCurrentState = [(TPSApplePayActivationValidation *)self getCurrentState];
  v6 = getCurrentState ^ [(TPSTargetingValidation *)self BOOLValue];
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:targeting];
  }

  (*(completionCopy + 2))(completionCopy, v6 ^ 1u, 0);
}

- (BOOL)getCurrentState
{
  v2 = objc_alloc_init(MEMORY[0x277D37FC0]);
  isPaymentPassActivationAvailable = [v2 isPaymentPassActivationAvailable];

  return isPaymentPassActivationAvailable;
}

- (void)getCurrentStateWithCompletion:(id)completion
{
  v5 = MEMORY[0x277CCABB0];
  completionCopy = completion;
  v7 = [v5 numberWithBool:{-[TPSApplePayActivationValidation getCurrentState](self, "getCurrentState")}];
  (*(completion + 2))(completionCopy, v7, 0);
}

@end